import 'package:flutter/material.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/order_status_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/features/order_status_management/data/models/menu_model.dart';

List<OrderModel> orderModels = [
  OrderModel(
    id: 'id',
    tableId: 'A1',
    storeId: 'storeId',
    status: OrderStatus.accepted,
    orderType: '메뉴',
    menus: const [
      MenuModel(id: '1', name: '육개장', totalPrice: 3000, count: 2),
      MenuModel(id: '1', name: '계란말이', totalPrice: 50000, count: 2),
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
        MenuModel(id: '1', name: '육개장', totalPrice: 3000, count: 2),
        MenuModel(id: '1', name: '계란말이', totalPrice: 50000, count: 2),
      ],
      orderedAt: DateTime.now())
];

class OrderStatusPage extends StatelessWidget {
  const OrderStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DateRangeSearchInput(
            onConfirm: (v) {
              print('${v.startDate} ${v.endDate} ${v.tableName} 검색결과');
            },
          ),
          Expanded(child: OrderStatusTable(orders: orderModels)),
        ],
      ),
    );
  }
}
