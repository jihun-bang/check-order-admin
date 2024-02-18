import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/dialog/app_dialog.dart';
import 'package:check_order_admin/features/menu_management/data/models/menu_item.dart';
import 'package:check_order_admin/features/menu_management/data/models/menu_option.dart';
import 'package:check_order_admin/features/menu_management/presentation/widgets/menu_edit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MenuItem extends StatelessWidget {
  final MenuItemModel menu;
  final List<String> categories;

  const MenuItem({
    super.key,
    required this.menu,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    void showMenuEditDialog() {
      showGeneralDialog(
          barrierDismissible: false,
          context: context,
          pageBuilder: (_, __, ___) {
            return MenuEditDialog(
              menu: menu,
              category: menu.category,
              onConfirm: (MenuItemModel menu) {
                menusRef.doc(menu.id).set(menu);
              },
            );
          });
    }

    void showDeleteMenuDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: AppDialog(
              label: '메뉴를 삭제하시겠습니까?',
              confirmLabel: '삭제하기',
              onConfirm: () {
                menusRef.doc(menu.id).delete();
              },
            ),
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _imageCard(
            price: menu.price,
            title: menu.name,
            url: 'assets/images/img_menu.png',
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              height: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _categoryDropdown(
                      options: categories, selectedOption: menu.category),
                  _switchList(menu: menu)
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 280,
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                _editButtons(
                  onEdit: showMenuEditDialog,
                  onDelete: showDeleteMenuDialog,
                ),
                const SizedBox(
                  height: 40,
                ),
                if (menu.options.isNotEmpty) _optionInfo(options: menu.options)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _imageCard(
      {required String url, required String title, required int price}) {
    String formattedPrice = NumberFormat('#,###').format(price);

    return Container(
      width: 200,
      height: 280,
      padding: const EdgeInsets.only(top: 12, right: 12, bottom: 22, left: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            offset: Offset(0, 2),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              url,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Text(
                title,
                style: AppTextStyle.body20sb136,
              ),
              Text(
                '$formattedPrice 원',
                style: AppTextStyle.body16m136,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryDropdown(
      {required String selectedOption, required List<String> options}) {
    return Wrap(
      spacing: 30,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          '카테고리',
          style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
        ),
        DropdownButtonHideUnderline(
          child: Container(
            width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.gray30),
                borderRadius: BorderRadius.circular(2)),
            child: DropdownButton(
                value: selectedOption,
                items: options.map<DropdownMenuItem<String>>((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (v) {
                  if (v == null) return;
                  menusRef.doc(menu.id).update(category: v);
                }),
          ),
        )
      ],
    );
  }

  Widget _editButtons({
    required void Function() onEdit,
    required void Function() onDelete,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: onEdit,
          icon: const Icon(
            Icons.edit_outlined,
            size: 24,
            color: AppColors.orange50,
          ),
          label: Text(
            '수정',
            style: AppTextStyle.body20sb136.copyWith(color: AppColors.orange50),
          ),
        ),
        TextButton.icon(
          onPressed: onDelete,
          icon: const Icon(
            Icons.delete_outline_outlined,
            size: 24,
            color: AppColors.gray60,
          ),
          label: Text(
            '삭제',
            style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
          ),
        )
      ],
    );
  }

  Widget _switchList({
    required MenuItemModel menu,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _switch(
            label: '노출',
            value: menu.isExposed,
            onChanged: (value) {
              menusRef.doc(menu.id).update(isExposed: value);
            }),
        _switch(
            label: '재고',
            value: !menu.isSoldOut,
            onChanged: (value) {
              menusRef.doc(menu.id).update(isSoldOut: !value);
            }),
        _switch(
            label: '베스트',
            value: menu.isPopular,
            onChanged: (value) {
              menusRef.doc(menu.id).update(isPopular: value);
            }),
        _switch(
            label: '옵션 필수',
            value: menu.isOptionNecessary,
            onChanged: (value) {
              menusRef.doc(menu.id).update(isOptionNecessary: value);
            }),
      ],
    );
  }

  Widget _switch(
      {required String label,
      required bool value,
      required Function(bool) onChanged}) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 20,
      children: [
        Text(
          label,
          style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
        ),
        Switch(
            activeColor: Colors.white,
            inactiveThumbColor: Colors.white,
            activeTrackColor: AppColors.orange40,
            inactiveTrackColor: AppColors.gray40,
            value: value,
            onChanged: onChanged)
      ],
    );
  }

  Widget _optionInfo({required List<MenuOptionModel> options}) {
    return Wrap(
      runSpacing: 8,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            '추가 옵션',
            style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
          ),
        ),
        ...options.map((option) {
          String formattedPrice = NumberFormat('#,###').format(option.price);

          return Row(
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  option.name,
                  style:
                      AppTextStyle.body16b136.copyWith(color: AppColors.gray80),
                ),
              ),
              Text(
                '$formattedPrice 원',
                style:
                    AppTextStyle.body16m136.copyWith(color: AppColors.gray60),
              )
            ],
          );
        }).toList(),
      ],
    );
  }
}
