import 'package:check_order_admin/features/order_status_management/domain/models/menu_item_model.dart';
import 'package:check_order_admin/features/order_status_management/presentation/widgets/order_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../data/models/order_model.dart';

class OrderStatusManagementTabBarView extends StatelessWidget {
  final List<OrderModel> models;

  const OrderStatusManagementTabBarView({
    super.key,
    required this.models,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: models
          .map((e) => OrderItem(
              orderedAt: e.orderedAt,
              tableName: e.tableId,
              orderId: e.id,
              menuType: e.orderType,
              menus: e.menus
                  .map((menu) =>
                      MenuItemModel(name: menu.name, count: menu.count))
                  .toList(),
              totalPrice: e.menus.map((e) => e.totalPrice).sum))
          .toList(),
    );
  }
}
