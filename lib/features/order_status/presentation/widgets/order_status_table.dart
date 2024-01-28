import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> flattenMenus(List<OrderModel> orders) {
  List<Map<String, dynamic>> flattenedMenus = [];

  for (var order in orders) {
    for (var menu in order.items) {
      flattenedMenus.add({
        'id': order.id,
        'tableId': order.tableName,
        'storeId': order.storeId,
        'status': order.status,
        'orderType': order.orderType,
        'menuId': menu.id,
        'name': menu.item.name,
        'totalPrice': menu.totalAmount,
        'count': menu.count,
        'orderedAt': order.orderedAt,
        'acceptedAt': order.acceptedAt,
        'declinedAt': order.declinedAt,
        'completedAt': order.completedAt,
      });
    }
  }

  return flattenedMenus;
}

List<String> columns = [
  'tableId',
  'orderedAt',
  'completedAt',
  'name',
  'count',
  'totalPrice',
  'status'
];

List<String> columnLabels = [
  '테이블',
  '주문 시간',
  '정산 시간',
  '메뉴',
  '수량',
  '가격',
  '상태',
];

class OrderStatusTable extends StatelessWidget {
  final List<OrderModel> orders;

  const OrderStatusTable({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> flattenOrders = flattenMenus(orders);

    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: DataTable(
          headingRowHeight: 80,
          dataRowMinHeight: 74,
          dataRowMaxHeight: 74,
          headingRowColor:
              MaterialStateProperty.resolveWith((states) => AppColors.gray80),
          dataRowColor:
              MaterialStateProperty.resolveWith((states) => AppColors.gray80),
          headingTextStyle:
              AppTextStyle.body16b136.copyWith(color: Colors.white),
          dataTextStyle:
              AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
          columns: List<DataColumn>.generate(columnLabels.length,
              (int idx) => DataColumn(label: Text(columnLabels[idx]))),
          rows: List<DataRow>.generate(
            flattenOrders.length,
            (int rowIndex) => DataRow(
              color: MaterialStateProperty.resolveWith((states) {
                return rowIndex % 2 == 0 ? AppColors.gray30 : Colors.white;
              }),
              cells: List<DataCell>.generate(
                columns.length,
                (int columnIndex) => DataCell(
                  Text(
                      '${flattenOrders[rowIndex][columns[columnIndex]] ?? ''}'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
