import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/core/widgets/dialog/app_dialog.dart';
import 'package:check_order_admin/core/widgets/text_field/app_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuOptionModel {
  String title;
  int price;

  MenuOptionModel(this.title, this.price);
}

// final options = [
//   MenuOptionModel('라면사리', 2000),
//   MenuOptionModel('우동사리', 2000),
//   MenuOptionModel('쫄면사리', 3000)
// ];

class MenuEditDialog extends StatelessWidget {
  final String? title;
  final int? price;
  final String? description;
  final List<String>? imgUrls;
  final List<MenuOptionModel> options;
  final void Function() onConfirm;

  const MenuEditDialog({
    super.key,
    this.title,
    this.price,
    this.description,
    this.imgUrls,
    this.options = const [],
    required this.onConfirm,
  });

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
                print('delete all options');
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
                          initText: title,
                          onChanged: (value) {
                            print('set title state to $value');
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
                          initText: price?.toString(),
                          onChanged: (value) {
                            print(
                                'set price state to ${num.tryParse(value) ?? 0}');
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
                            print('set description state to $value');
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
                                    print('add {} to options state');
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
                            if (options.isEmpty) _optionItem(),
                            ...(options.map((option) {
                              return _optionItem(
                                title: option.title,
                                price: option.price,
                              );
                            }).toList()),
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
                        onConfirm();
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

  Widget _optionItem({String? title, int? price}) {
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
                  print('set option title to $value');
                },
                width: 400,
                fontSize: 16,
              ),
            ),
            AppTextField(
              initText: price?.toString(),
              onChanged: (value) {
                print('set option price to ${num.tryParse(value) ?? 0}');
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
            print('delete option from options state');
          },
        ),
      ],
    );
  }
}
