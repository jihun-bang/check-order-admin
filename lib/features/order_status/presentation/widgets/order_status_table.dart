import 'package:flutter/material.dart';
import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';

class Order {
  final String orderId;
  final String orderTime;
  final String settlementTime;
  final String menu;
  final int quantity;
  final double price;
  final String status;

  Order({
    required this.orderId,
    required this.orderTime,
    required this.settlementTime,
    required this.menu,
    required this.quantity,
    required this.price,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'orderId': orderId,
      'orderTime': orderTime,
      'settlementTime': settlementTime,
      'menu': menu,
      'quantity': quantity,
      'price': price,
      'status': status,
    };
  }

  dynamic operator [](String key) {
    final Map<String, dynamic> map = toMap();
    return map[key];
  }
}

List<String> columns = [
  'orderId',
  'orderTime',
  'settlementTime',
  'menu',
  'quantity',
  'price',
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
  final List<Order> orders;

  const OrderStatusTable({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
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
            orders.length,
            (int rowIndex) => DataRow(
              color: MaterialStateProperty.resolveWith((states) {
                return rowIndex % 2 == 0 ? AppColors.gray30 : Colors.white;
              }),
              cells: List<DataCell>.generate(
                columns.length,
                (int columnIndex) => DataCell(
                  Text('${orders[rowIndex][columns[columnIndex]]}'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
