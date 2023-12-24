import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:flutter/material.dart';

import '../widgets/order_status_management_tab_bar_view.dart';

class OrderStatusManagementPage extends StatelessWidget {
  const OrderStatusManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            _tabBar,
            Expanded(child: _buildTabBarView),
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
      tabs: [
        Tab(text: '대기'),
        Tab(text: '거절'),
        Tab(text: '완료'),
      ],
    );
  }

  TabBarView get _buildTabBarView {
    return TabBarView(children: [
      OrderStatusManagementTabBarView(
        models: [
          OrderModel(
              id: 'id',
              tableId: 'tableId',
              storeId: 'storeId',
              status: OrderStatus.accepted,
              orderType: '메뉴',
              menus: [],
              orderedAt: DateTime.now())
        ],
      ),
      OrderStatusManagementTabBarView(
        models: [
          OrderModel(
              id: 'id',
              tableId: 'tableId',
              storeId: 'storeId',
              status: OrderStatus.accepted,
              orderType: '메뉴',
              menus: [],
              orderedAt: DateTime.now())
        ],
      ),
      OrderStatusManagementTabBarView(
        models: [
          OrderModel(
              id: 'id',
              tableId: 'tableId',
              storeId: 'storeId',
              status: OrderStatus.accepted,
              orderType: '메뉴',
              menus: [],
              orderedAt: DateTime.now())
        ],
      ),
    ]);
  }
}
