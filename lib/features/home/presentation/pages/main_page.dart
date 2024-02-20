import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainPage({
    super.key,
    required this.navigationShell,
  });

  static const nav = [
    '주문 현황 관리',
    '테이블 현황',
    '주문 기록',
    '메뉴 관리',
    '더보기',
  ];

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: _buildBottomNavigationBar,
    );
  }

  Widget get _buildBottomNavigationBar {
    return Ink(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          height: 80,
          child: DefaultTabController(length: 5, child: _tabBar),
        ),
      ),
    );
  }

  Widget get _tabBar {
    return Container(
      color: AppColors.gray10,
      child: TabBar(
        labelStyle:
            AppTextStyle.title22b136.copyWith(color: AppColors.orange40),
        unselectedLabelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: const BoxDecoration(color: Colors.white),
        onTap: (index) {
          switch (index) {
            case 0:
              const OrderStatusManagementRoute().go(context);
            case 1:
              const TableManagementRoute().go(context);
            case 2:
              const OrderStatusRoute().go(context);
            case 3:
              const MenuManagementRoute().go(context);
            case 4:
              const SettingRoute().go(context);
          }
        },
        tabs: MainPage.nav.map((e) => Tab(height: 80, text: e)).toList(),
      ),
    );
  }
}
