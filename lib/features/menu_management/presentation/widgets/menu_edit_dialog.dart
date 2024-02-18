import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/core/widgets/dialog/app_dialog.dart';
import 'package:check_order_admin/core/widgets/text_field/app_text_field.dart';
import 'package:check_order_admin/features/menu_management/data/models/menu_item.dart';
import 'package:check_order_admin/features/menu_management/data/models/menu_option.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StringMenuOptionModel {
  final String name;
  final String price;

  StringMenuOptionModel({
    this.name = '',
    this.price = '',
  });
}

StringMenuOptionModel defaultOption = StringMenuOptionModel();

class MenuEditDialog extends StatefulWidget {
  final MenuItemModel? menu;
  final String category;
  final void Function(MenuItemModel menu) onConfirm;

  const MenuEditDialog({
    super.key,
    this.menu,
    required this.category,
    required this.onConfirm,
  });

  @override
  State<MenuEditDialog> createState() => _MenuEditDialogState();
}

class _MenuEditDialogState extends State<MenuEditDialog> {
  late String name;
  late String price;
  late String description;
  late List<StringMenuOptionModel> options;

  @override
  void initState() {
    super.initState();
    name = widget.menu?.name ?? '';
    price = widget.menu?.price.toString() ?? '';
    description = widget.menu?.description ?? '';

    List<StringMenuOptionModel> widgetOptions = widget.menu?.options
            .map((option) => StringMenuOptionModel(
                name: option.name, price: option.price.toString()))
            .toList() ??
        [];
    options = widgetOptions.isEmpty ? [defaultOption] : widgetOptions;
  }

  @override
  Widget build(BuildContext context) {
    void closeDialog() {
      Navigator.of(context, rootNavigator: true).pop(false);
    }

    void showDiscardChangesDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: AppDialog(
              label: '변경사항을 저장하지 않고 나가시겠습니까?',
              confirmLabel: '나가기',
              onConfirm: closeDialog,
            ),
          );
        },
      );
    }

    void showDeleteAllOptionsDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: AppDialog(
              label: '추가 옵션을 모두 삭제하시겠습니까?',
              confirmLabel: '삭제하기',
              onConfirm: () {
                setState(() {
                  options = [defaultOption];
                });
              },
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.gray10),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: Text(
                      '상품 등록',
                      style: AppTextStyle.body20sb136,
                    )),
                IconButton(
                  onPressed: closeDialog,
                  icon: const Icon(Icons.close, size: 24),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  _wrapper(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _title('메뉴명'),
                        AppTextField(
                          initText: name,
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          width: 510,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                  _wrapper(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _title('가격(원)'),
                        AppTextField(
                          initText: price,
                          onChanged: (value) {
                            setState(() {
                              price = value;
                            });
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          width: 510,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                  _wrapper(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _title('메뉴 설명'),
                        AppTextField(
                          initText: description,
                          onChanged: (value) {
                            setState(() {
                              description = value;
                            });
                          },
                          maxLines: 5,
                          width: 510,
                          fontSize: 16,
                        ),
                      ],
                    ),
                  ),
                  _wrapper(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _title('메인 이미지'),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 20,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [_emptyImg, _subtitle('메인 이미지1')],
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 20,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [_emptyImg, _subtitle('메인 이미지2')],
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 20,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [_emptyImg, _subtitle('메인 이미지3')],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  _wrapper(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _title('추가 옵션'),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    size: 24,
                                  ),
                                  color: AppColors.orange40,
                                  onPressed: () {
                                    setState(
                                      () {
                                        options = [defaultOption, ...options];
                                      },
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete_outline_outlined,
                                    size: 24,
                                  ),
                                  color: AppColors.gray40,
                                  onPressed: showDeleteAllOptionsDialog,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  SizedBox(width: 450, child: _subtitle('메뉴명')),
                                  _subtitle('가격(원)')
                                ],
                              ),
                            ),
                            ...List.generate(
                                options.length,
                                (i) => _optionItem(
                                      idx: i,
                                      title: options[i].name,
                                      price: options[i].price,
                                    )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: AppButton(
                    label: '돌아가기',
                    buttonColor: AppColors.gray10,
                    labelColor: AppColors.gray60,
                    onTap: showDiscardChangesDialog,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  flex: 1,
                  child: AppButton(
                      label: '저장하기',
                      buttonColor: AppColors.orange50,
                      onTap: () {
                        List<MenuOptionModel> filteredOptions = options
                            .where((element) => element.name.isNotEmpty)
                            .map((element) => MenuOptionModel(
                                name: element.name,
                                price: int.tryParse(element.price) ?? 0))
                            .toList();

                        MenuItemModel updatedMenu = widget.menu?.copyWith(
                                name: name,
                                price: int.tryParse(price) ?? 0,
                                description: description,
                                options: filteredOptions) ??
                            MenuItemModel(
                                name: name,
                                category: widget.category,
                                price: int.tryParse(price) ?? 0,
                                description: description,
                                options: filteredOptions);

                        widget.onConfirm(updatedMenu);
                        closeDialog();
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _title(String text) {
    return SizedBox(
      width: 300,
      child: Text(
        text,
        style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
      ),
    );
  }

  Widget _subtitle(String text) {
    return Text(
      text,
      style: AppTextStyle.body16b136.copyWith(color: AppColors.gray60),
    );
  }

  Widget _wrapper({required Widget child}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 75),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.gray10),
        ),
      ),
      child: child,
    );
  }

  Widget get _emptyImg {
    return DottedBorder(
      color: AppColors.gray40,
      borderType: BorderType.RRect,
      dashPattern: const [3, 5],
      radius: const Radius.circular(15),
      child: SizedBox(
        width: 300,
        height: 200,
        child: IconButton(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          icon: const Icon(
            Icons.add,
            size: 50,
            color: AppColors.gray40,
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _optionItem({required int idx, String? title, String? price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 450,
              child: AppTextField(
                initText: title,
                onChanged: (value) {
                  setState(
                    () {
                      List<StringMenuOptionModel> newOptions = options
                          .asMap()
                          .map((i, e) => i == idx
                              ? MapEntry(
                                  i,
                                  StringMenuOptionModel(
                                      name: value, price: e.price))
                              : MapEntry(i, e))
                          .values
                          .toList();
                      options = newOptions;
                    },
                  );
                },
                width: 400,
                fontSize: 16,
              ),
            ),
            AppTextField(
              initText: price?.toString(),
              onChanged: (value) {
                setState(
                  () {
                    List<StringMenuOptionModel> newOptions = options
                        .asMap()
                        .map((i, e) => i == idx
                            ? MapEntry(
                                i,
                                StringMenuOptionModel(
                                    name: e.name, price: value))
                            : MapEntry(i, e))
                        .values
                        .toList();

                    options = newOptions;
                  },
                );
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              width: 400,
              fontSize: 16,
            ),
          ],
        ),
        IconButton(
          icon: const Icon(
            Icons.delete_outline_outlined,
            size: 24,
          ),
          color: AppColors.gray40,
          onPressed: () {
            setState(
              () {
                if (options.length == 1) {
                  options = [defaultOption];
                } else {
                  options = List.from(options).removeAt(idx);
                }
              },
            );
          },
        ),
      ],
    );
  }
}
