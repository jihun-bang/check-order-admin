import 'package:flutter/material.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/order_status_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/features/order_status_management/data/models/menu_model.dart';

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

    final containsTableName = order.tableId.contains(tableName);

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
                startDate = DateTime.parse(v.startDate);
                endDate = DateTime.parse(v.endDate);
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
