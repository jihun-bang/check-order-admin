import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/category_add_dialog.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/menu_management_tab_bar_view.dart';
import 'package:flutter/material.dart';

class MenuManagementPage extends StatefulWidget {
  const MenuManagementPage({super.key});

  @override
  State<MenuManagementPage> createState() => _MenuManagementPageState();
}

class _MenuManagementPageState extends State<MenuManagementPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late List<Widget> _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = [
      const Tab(text: '직원호출(9)'),
      const Tab(text: '국물요리(11)'),
      const Tab(text: '튀김요리(3)')
    ];
    _tabController = TabController(length: _tabs.length + 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    void addTab(value) {
      setState(() {
        _tabs.add(Tab(text: value));
        _tabController = TabController(length: _tabs.length + 1, vsync: this);
      });
    }

    void showCategoryAddDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            alignment: Alignment.center,
            child: CategoryAddDialog(
              onConfirm: addTab,
            ),
          );
        },
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(children: [
          _tabBar(showCategoryAddDialog: showCategoryAddDialog),
          Expanded(child: _buildTabBarView),
        ]),
      ),
    );
  }

  TabBar _tabBar({required showCategoryAddDialog}) {
    return TabBar(
      labelStyle: AppTextStyle.title22b136.copyWith(color: AppColors.orange40),
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.orange40,
      controller: _tabController,
      tabs: [..._tabs, const Tab(text: '+ 카테고리')],
      onTap: (index) {
        if (index == _tabs.length) {
          showCategoryAddDialog();
        } else {
          _tabController.animateTo(index);
        }
      },
    );
  }

  TabBarView get _buildTabBarView {
    return TabBarView(
      controller: _tabController,
      children: [
        for (var _ in _tabs)
          const MenuManagementTabBarView(
            models: [],
          ),
        Container()
      ],
    );
  }
}
