import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/utils/logger.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/order_status_dialog.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/table_card_item.dart';
import 'package:check_order_admin/services/auth_provider.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:collection/collection.dart';
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

  void showOrderStatusDialog({required List<OrderModel> orders}) {
    showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (_) {
        return Dialog(
          insetPadding: const EdgeInsets.only(bottom: 44),
          alignment: Alignment.topRight,
          child: OrderStatusDialog(
            initialOrderedMenuList: orders
                .where((e) => [OrderStatus.accepted, OrderStatus.completed]
                    .contains(e.status))
                .map((e) => e.items)
                .flattened
                .toList(),
            onConfirm: (totalPrice) async {
              for (var order in orders) {
                Logger.d(order.id);
                await ordersRef.doc(order.id).update(
                      isSettlement: true,
                      settlementAt: DateTime.now(),
                      status: OrderStatus.completed,
                    );
              }
              if (context.mounted) {
                context.pop();
              }
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
      ref: ordersRef.whereStoreId(isEqualTo: _storeId),
      builder: (_, AsyncSnapshot<OrderModelQuerySnapshot> snapshot, __) {
        final orders = snapshot.data?.docs
                .map((e) => e.data)
                .where((data) => !data.isSettlement)
                .sortedBy((element) => element.orderedAt)
                .toList() ??
            [];

        if (orders
            .where((o) =>
                o.status == OrderStatus.completed ||
                o.status == OrderStatus.accepted)
            .isEmpty) {
          return const Center(
            child: Text(
              '테이블이 없습니다.',
              style: AppTextStyle.title22b136,
            ),
          );
        }

        Map<String, List<OrderModel>> groupedOrders = {};

        for (var order in orders) {
          final tableName = order.tableName;
          List<OrderModel> prev = groupedOrders[tableName] ?? [];
          if (prev.isEmpty) {
            groupedOrders[tableName] = [order];
          } else {
            groupedOrders[tableName]?.add(order);
          }
        }

        return Wrap(
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: groupedOrders.values
              .map(
                (order) => TableCardItem(
                  enteredAt: order.first.orderedAt,
                  tableId: order.first.tableName,
                  orders: order,
                  onTap: () {
                    showOrderStatusDialog(orders: orders);
                  },
                ),
              )
              .toList(),
        );
      },
    );
  }
}
