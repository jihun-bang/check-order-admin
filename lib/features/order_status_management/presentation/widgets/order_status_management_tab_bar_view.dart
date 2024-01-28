import 'package:check_order_admin/features/order_status_management/presentation/widgets/order_item.dart';
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
      children: models.map((e) => OrderItem(order: e)).toList(),
    );
  }
}
