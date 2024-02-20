import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/order_status_dialog.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/table_card_item.dart';
import 'package:check_order_admin/services/auth_provider.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TableManagementPage extends ConsumerStatefulWidget {
  const TableManagementPage({super.key});

  @override
  ConsumerState<TableManagementPage> createState() =>
      _TableManagementPageState();
}

class _TableManagementPageState extends ConsumerState<TableManagementPage> {
  String? get _storeId => ref.read(authProvider.notifier).currentUser?.email;

  void showOrderStatusDialog({required OrderModel order}) {
    showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (_) {
        return Dialog(
          insetPadding: const EdgeInsets.only(bottom: 44),
          alignment: Alignment.topRight,
          child: OrderStatusDialog(
            initialOrderedMenuList: order.items,
            onConfirm: (totalPrice) {
              ordersRef
                  .doc(order.id)
                  .update(isSettlement: true, settlementAt: DateTime.now());
              context.pop();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: _buildTableCardList,
        ),
      ),
    );
  }

  Widget get _buildTableCardList {
    return FirestoreBuilder(
      ref: ordersRef
          .whereStoreId(isEqualTo: _storeId)
          .whereStatus(isEqualTo: OrderStatus.accepted),
      builder: (_, AsyncSnapshot<OrderModelQuerySnapshot> snapshot, __) {
        final completedOrders = snapshot.data?.docs
                .map((e) => e.data)
                .where((data) => !data.isSettlement) ??
            [];

        if (completedOrders.isEmpty) {
          return const Center(
            child: Text(
              '테이블이 없습니다.',
              style: AppTextStyle.title22b136,
            ),
          );
        }

        Map<String, OrderModel> groupedOrders = {};

        for (var order in completedOrders) {
          String tableName = order.tableName;
          OrderModel? prev = groupedOrders[tableName];

          if (prev == null) {
            groupedOrders[tableName] = order;
          } else {
            List<OrderItemModel> items = List.from(prev.items);
            items.addAll(order.items);

            final DateTime orderedAt = prev.orderedAt.isBefore(order.orderedAt)
                ? prev.orderedAt
                : order.orderedAt;

            groupedOrders[tableName] =
                prev.copyWith(items: items, orderedAt: orderedAt);
          }
        }

        return Wrap(
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: groupedOrders.values
              .map(
                (order) => TableCardItem(
                  enteredAt: order.orderedAt,
                  tableId: order.tableName,
                  menus: order.items,
                  onTap: () {
                    showOrderStatusDialog(order: order);
                  },
                ),
              )
              .toList(),
        );
      },
    );
  }
}
