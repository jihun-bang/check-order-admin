import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class MenuManagementTabBarView extends StatelessWidget {
  final List models;

  const MenuManagementTabBarView({
    super.key,
    required this.models,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          decoration: const BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.2))),
          ),
          width: double.infinity,
          child: Center(
            child: TextButton(
              onPressed: () {
                print('메뉴 추가 다이얼로그');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: AppColors.gray40,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                width: 260,
                height: 58,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add, color: AppColors.gray60, size: 20),
                    Text(
                      '메뉴 추가',
                      style: AppTextStyle.body16b136
                          .copyWith(color: AppColors.gray60),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: models.map((model) => const MenuItem()).toList(),
          ),
        ),
      ],
    );
  }
}
