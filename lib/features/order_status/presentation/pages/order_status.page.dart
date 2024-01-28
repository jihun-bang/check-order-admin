import 'package:check_order_admin/features/menu_management/data/models/menu_item.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/order_status_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:flutter/material.dart';
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

    final containsTableName = order.tableName.contains(tableName);

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
    tableName: 'A1',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    items: [
      OrderItemModel(
          id: '1',
          item: MenuItemModel(id: '1', name: '육개장', category: '탕'),
          updatedAt: DateTime.now(),
          totalAmount: 3000),
      OrderItemModel(
          id: '2',
          item: MenuItemModel(id: '2', name: '계란말이', category: '탕'),
          updatedAt: DateTime.now(),
          totalAmount: 50000),
    ],
    orderedAt: DateTime.now(),
    totalAmount: 53000,
  ),
  OrderModel(
    id: 'id',
    tableName: 'B1',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    items: [
      OrderItemModel(
          id: '1',
          item: MenuItemModel(id: '1', name: '육개장', category: '탕'),
          updatedAt: DateTime.now(),
          totalAmount: 3000),
      OrderItemModel(
          id: '2',
          item: MenuItemModel(id: '2', name: '계란말이', category: '탕'),
          updatedAt: DateTime.now(),
          totalAmount: 50000),
    ],
    orderedAt: DateTime.now(),
    totalAmount: 53000,
  ),
  OrderModel(
    id: 'id',
    tableName: 'A2',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    items: [
      OrderItemModel(
          id: '1',
          item: MenuItemModel(id: '1', name: '육개장', category: '탕'),
          updatedAt: DateTime.now(),
          totalAmount: 3000),
      OrderItemModel(
          id: '2',
          item: MenuItemModel(id: '2', name: '계란말이', category: '탕'),
          updatedAt: DateTime.now(),
          totalAmount: 50000),
    ],
    orderedAt: DateTime(2024, 01, 3),
    totalAmount: 53000,
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
