import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/menu_edit_dialog.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/menu_item.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MenuManagementTabBarView extends StatelessWidget {
  final List models;

  const MenuManagementTabBarView({
    super.key,
    required this.models,
  });

  @override
  Widget build(BuildContext context) {
    void showMenuEditDialog() {
      showGeneralDialog(
          barrierDismissible: false,
          context: context,
          pageBuilder: (_, __, ___) {
            return MenuEditDialog(
              onConfirm: () {
                print('[API] add new menu');
              },
            );
          });
    }

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 40),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: AppColors.gray10)),
          ),
          width: double.infinity,
          child: Center(child: _menuAddBtn(onPressed: showMenuEditDialog)),
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

  Widget _menuAddBtn({required void Function() onPressed}) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 0),
      ),
      onPressed: onPressed,
      child: DottedBorder(
        color: AppColors.gray40,
        borderType: BorderType.RRect,
        dashPattern: const [3, 5],
        radius: const Radius.circular(15),
        child: SizedBox(
          width: 260,
          height: 58,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.add, color: AppColors.gray60, size: 20),
              Text(
                '메뉴 추가',
                style:
                    AppTextStyle.body16b136.copyWith(color: AppColors.gray60),
              )
            ],
          ),
        ),
      ),
    );
  }
}
