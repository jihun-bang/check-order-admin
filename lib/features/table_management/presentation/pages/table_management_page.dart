import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/order_status_dialog.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/table_card_item.dart';
import 'package:check_order_admin/services/auth_provider.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TableManagementPage extends ConsumerWidget {
  const TableManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void showOrderStatusDialog({required order}) {
      showDialog(
        barrierColor: Colors.transparent,
        context: context,
        builder: (_) {
          return Dialog(
            // bottom: _buildBottomNavigationBar height
            insetPadding: const EdgeInsets.only(bottom: 44),
            alignment: Alignment.topRight,
            child: OrderStatusDialog(
              initialOrderedMenuList: order.items,
              onConfirm: (totalPrice) {
                print('[API] ${order.tableName} have to pay $totalPrice');
              },
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: _buildTableCardList(ref, (order) {
            showOrderStatusDialog(order: order);
          }),
        ),
      ),
    );
  }

  Widget _buildTableCardList(WidgetRef ref, onTap) {
    return FirestoreBuilder(
      ref: ordersRef,
      builder: (_, AsyncSnapshot<OrderModelQuerySnapshot> snapshot, __) {
        final completedOrders = snapshot.data?.docs.map((e) => e.data).where(
                (data) =>
                    data.storeId ==
                        ref.read(authProvider.notifier).currentUser?.email &&
                    data.status == OrderStatus.completed) ??
            [];

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
                    onTap(order);
                  },
                ),
              )
              .toList(),
        );
      },
    );
  }
}
