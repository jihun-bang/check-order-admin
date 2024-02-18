import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/menu_management/data/models/menu_item.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/category_add_dialog.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/menu_management_tab_bar_view.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<String> extractCategories(List<MenuItemModel> menuItems) {
  Set<String> categories = {};

  for (var menuItem in menuItems) {
    categories.add(menuItem.category);
  }

  return categories.toList();
}

class MenuManagementPage extends ConsumerStatefulWidget {
  const MenuManagementPage({super.key});

  @override
  _MenuManagementPageState createState() => _MenuManagementPageState();
}

class _MenuManagementPageState extends ConsumerState<MenuManagementPage>
    with TickerProviderStateMixin {
  late List<String> categories;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    categories = extractCategories(menus);
    _tabController = TabController(length: categories.length + 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    void addTab(value) {
      setState(() {
        categories.add(value);
        _tabController =
            TabController(length: categories.length + 1, vsync: this);
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

    return FirestoreBuilder(
      ref: menusRef,
      builder: (_, AsyncSnapshot<MenuItemModelQuerySnapshot> snapshot, __) {
        final menus = snapshot.data?.docs.map((e) => e.data).toList() ?? [];

        return DefaultTabController(
          length: 3,
          child: Scaffold(
            body: Column(children: [
              _tabBar(showCategoryAddDialog: showCategoryAddDialog),
              Expanded(child: _buildTabBarView(menus: menus)),
            ]),
          ),
        );
      },
    );
  }

  TabBar _tabBar({required showCategoryAddDialog}) {
    return TabBar(
      labelStyle: AppTextStyle.title22b136.copyWith(color: AppColors.orange40),
      unselectedLabelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: AppColors.orange40,
      controller: _tabController,
      tabs: [
        ...categories.map((menu) => Tab(text: menu)).toList(),
        const Tab(text: '+ 카테고리')
      ],
      onTap: (index) {
        if (index == categories.length) {
          showCategoryAddDialog();
        } else {
          _tabController.animateTo(index);
        }
      },
    );
  }

  TabBarView _buildTabBarView({required List<MenuItemModel> menus}) {
    return TabBarView(
      controller: _tabController,
      children: [
        for (var category in categories)
          MenuManagementTabBarView(
            category: category,
            menus: menus.where((menu) => menu.category == category).toList(),
          ),
        Container()
      ],
    );
  }
}
