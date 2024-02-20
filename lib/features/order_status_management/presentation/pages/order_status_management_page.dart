import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../services/auth_provider.dart';
import '../widgets/order_status_management_tab_bar_view.dart';

class OrderStatusManagementPage extends ConsumerWidget {
  const OrderStatusManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            _tabBar,
            Expanded(child: _buildTabBarView(ref)),
          ],
        ),
      ),
    );
  }

  TabBar get _tabBar {
    return TabBar(
      labelStyle: AppTextStyle.title22b136.copyWith(color: AppColors.orange40),
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.orange40,
      tabs: const [
        Tab(text: '대기'),
        Tab(text: '거절'),
        Tab(text: '수락'),
        Tab(text: '완료'),
      ],
    );
  }

  Widget _buildTabBarView(WidgetRef ref) {
    return FirestoreBuilder(
        ref: ordersRef.whereStoreId(
            isEqualTo: ref.watch(authProvider.notifier).currentUser?.email),
        builder: (_, AsyncSnapshot<OrderModelQuerySnapshot> snapshot, __) {
          final orders = snapshot.data?.docs.map((e) => e.data) ?? [];
          return TabBarView(children: [
            OrderStatusManagementTabBarView(
              models:
                  orders.where((o) => o.status == OrderStatus.wait).toList(),
            ),
            OrderStatusManagementTabBarView(
              models: orders
                  .where((o) => o.status == OrderStatus.declined)
                  .toList(),
            ),
            OrderStatusManagementTabBarView(
              models: orders
                  .where((o) => o.status == OrderStatus.accepted)
                  .toList(),
            ),
            OrderStatusManagementTabBarView(
              models: orders
                  .where((o) => o.status == OrderStatus.completed)
                  .toList(),
            )
          ]);
        });
  }
}
