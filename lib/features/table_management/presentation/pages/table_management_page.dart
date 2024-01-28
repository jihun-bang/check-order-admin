import 'package:check_order_admin/features/order_status/presentation/pages/order_status.page.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/order_status_dialog.dart';
import 'package:check_order_admin/features/table_management/presentation/widgets/table_card_item.dart';
import 'package:flutter/material.dart';

class TableManagementPage extends StatelessWidget {
  const TableManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    void showOrderStatusDialog(menuList) {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
              alignment: Alignment.centerRight,
              child: OrderStatusDialog(
                initialOrderedMenuList: menuList,
                onConfirm: (totalPrice) {
                  print('>>>pay $totalPrice');
                },
              ));
        },
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
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
                    showOrderStatusDialog(order.items);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
