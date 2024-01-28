import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/text_style.dart';

class TableCardItem extends StatelessWidget {
  final DateTime enteredAt;
  final String tableId;
  final List<OrderItemModel> menus;
  final VoidCallback onTap;

  const TableCardItem({
    super.key,
    required this.enteredAt,
    required this.tableId,
    required this.menus,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '입장 시간',
                    style:
                        AppTextStyle.body16m136.copyWith(color: Colors.white),
                  ),
                  Text(
                    DateFormat('HH:mm').format(enteredAt),
                    style:
                        AppTextStyle.body16m136.copyWith(color: Colors.white),
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
                tableId,
                style:
                    AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _menuList {
    return Wrap(
        runSpacing: 7,
        children: menus
            .map((menu) => _menuItem(
                  name: menu.item.name,
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
