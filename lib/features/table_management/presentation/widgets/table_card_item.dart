import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:check_order_admin/features/order_status_management/domain/models/menu_item_model.dart';

class TableCardItem extends StatelessWidget {
  final DateTime enteredAt;
  final String tableName;
  final String tableId;
  final List<MenuItemModel> menus;

  const TableCardItem({
    super.key,
    required this.enteredAt,
    required this.tableName,
    required this.tableId,
    required this.menus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 274,
      height: 305,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 12,
            spreadRadius: 0,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: AppColors.gray80,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '입장 시간',
                  style: AppTextStyle.body16m136.copyWith(color: Colors.white),
                ),
                Text(
                  DateFormat('HH:mm').format(enteredAt),
                  style: AppTextStyle.body16m136.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
              child: _menuList,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
            alignment: Alignment.centerRight,
            child: Text(
              tableName,
              style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _menuList {
    return Wrap(
        runSpacing: 7,
        children: menus
            .map((menu) => _menuItem(
                  name: menu.name,
                  count: menu.count,
                ))
            .toList());
  }

  Widget _menuItem({required String name, required int count}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
        ),
        Text(
          '$count',
          style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
        ),
      ],
    );
  }
}
