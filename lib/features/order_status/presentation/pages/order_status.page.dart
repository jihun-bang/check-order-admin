import 'package:flutter/material.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/order_status_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/features/order_status_management/data/models/menu_model.dart';
import 'package:intl/intl.dart';

List<OrderModel> filterOrders(
  List<OrderModel> orders,
  DateTime? startDate,
  DateTime? endDate,
  String tableName,
) {
  List<OrderModel> filteredOrders = orders.where((order) {
    final orderedAtDate = DateTime(
      order.orderedAt.year,
      order.orderedAt.month,
      order.orderedAt.day,
    );

    final containsTableName = order.tableId.contains(tableName);

    if (startDate == null || endDate == null) {
      return containsTableName;
    }

    final isDateInRange = (orderedAtDate.isAfter(startDate) ||
            orderedAtDate.isAtSameMomentAs(startDate)) &&
        (orderedAtDate.isBefore(endDate) ||
            orderedAtDate.isAtSameMomentAs(endDate));

    return isDateInRange && containsTableName;
  }).toList();

  return filteredOrders;
}

List<OrderModel> orders = [
  OrderModel(
    id: 'id',
    tableId: 'A1',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    menus: const [
      MenuModel(id: '1', name: '육개장', totalPrice: 3000, count: 3),
      MenuModel(id: '2', name: '계란말이', totalPrice: 50000, count: 1),
    ],
    orderedAt: DateTime.now(),
  ),
  OrderModel(
    id: 'id',
    tableId: 'B1',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    menus: const [
      MenuModel(id: '1', name: '육개장', totalPrice: 3000, count: 4),
      MenuModel(id: '2', name: '계란말이', totalPrice: 50000, count: 2),
    ],
    orderedAt: DateTime.now(),
  ),
  OrderModel(
    id: 'id',
    tableId: 'A2',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    menus: const [
      MenuModel(id: '1', name: '육개장', totalPrice: 3000, count: 2),
      MenuModel(id: '2', name: '계란말이', totalPrice: 50000, count: 2),
    ],
    orderedAt: DateTime(2024, 01, 3),
  ),
];

class OrderStatusPage extends StatefulWidget {
  const OrderStatusPage({super.key});

  @override
  State<OrderStatusPage> createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {
  List<OrderModel> filteredOrders = orders;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DateRangeSearchInput(
            onConfirm: (v) {
              DateTime? startDate =
                  DateFormat('yyyy-MM-dd').tryParse(v.startDate);
              DateTime? endDate = DateFormat('yyyy-MM-dd').tryParse(v.endDate);

              setState(() {
                filteredOrders =
                    filterOrders(orders, startDate, endDate, v.tableName ?? '');
              });
            },
            onReset: () {
              setState(() {
                filteredOrders = orders;
              });
            },
          ),
          Expanded(child: OrderStatusTable(orders: filteredOrders)),
        ],
      ),
    );
  }
}
