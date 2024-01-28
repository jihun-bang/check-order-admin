import 'package:check_order_admin/features/menu_management/data/models/menu_item.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/order_status_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime removeTime(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

List<OrderModel> filterOrders({
  required List<OrderModel> orders,
  required DateTime startDate,
  required DateTime endDate,
  String tableName = '',
}) {
  List<OrderModel> filteredOrders = orders.where((order) {
    final modifiedOrderedAtDate = removeTime(order.orderedAt);
    final modifiedStartDate = removeTime(startDate);
    final modifiedEndDate = removeTime(endDate);

    final containsTableName = order.tableName.contains(tableName);

    final isDateInRange = (modifiedOrderedAtDate.isAfter(modifiedStartDate) ||
            modifiedOrderedAtDate.isAtSameMomentAs(modifiedStartDate)) &&
        (modifiedOrderedAtDate.isBefore(modifiedEndDate) ||
            modifiedOrderedAtDate.isAtSameMomentAs(modifiedEndDate));

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
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  String tableName = '';
  late List<OrderModel> filteredOrders;

  @override
  void initState() {
    super.initState();
    filteredOrders =
        filterOrders(orders: orders, startDate: startDate, endDate: endDate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DateRangeSearchInput(
            initialStartDate: startDate,
            initialEndDate: endDate,
            initialTableName: tableName,
            onConfirm: (v) {
              setState(() {
                startDate = v.startDate;
                endDate = v.endDate;
                tableName = v.tableName ?? '';
                filteredOrders = filterOrders(
                  orders: orders,
                  startDate: startDate,
                  endDate: endDate,
                  tableName: tableName,
                );
              });
            },
            onReset: () {
              setState(() {
                startDate = DateTime.now();
                endDate = DateTime.now();
                tableName = '';

                filteredOrders = filterOrders(
                  orders: orders,
                  startDate: startDate,
                  endDate: endDate,
                );
              });
            },
          ),
          Expanded(child: OrderStatusTable(orders: filteredOrders)),
        ],
      ),
    );
  }
}
