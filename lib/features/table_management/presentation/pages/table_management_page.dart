import 'package:check_order_admin/features/order_status/presentation/pages/order_status.page.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/order_status_dialog.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/table_card_item.dart';
import 'package:flutter/material.dart';

class TableManagementPage extends StatelessWidget {
  const TableManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    void showOrderStatusDialog(
        {required String tableId, required List<OrderItemModel> menuList}) {
      showDialog(
        barrierColor: Colors.transparent,
        context: context,
        builder: (_) {
          return Dialog(
            // bottom: _buildBottomNavigationBar height
            insetPadding: const EdgeInsets.only(bottom: 44),
            alignment: Alignment.topRight,
            child: OrderStatusDialog(
              initialOrderedMenuList: menuList,
              onConfirm: (totalPrice) {
                print('[API] $tableId have to pay $totalPrice');
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
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 20,
            runSpacing: 20,
            children: orders
                .map(
                  (order) => TableCardItem(
                    enteredAt: order.orderedAt,
                    tableId: order.tableName,
                    menus: order.items,
                    onTap: () {
                      showOrderStatusDialog(
                          tableId: order.tableName, menuList: order.items);
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
