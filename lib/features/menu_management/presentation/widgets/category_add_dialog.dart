import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/core/widgets/text_field/app_text_field.dart';
import 'package:flutter/material.dart';

class CategoryAddDialog extends StatefulWidget {
  final void Function(String) onConfirm;

  const CategoryAddDialog({
    super.key,
    required this.onConfirm,
  });

  @override
  State<CategoryAddDialog> createState() => _CategoryAddDialogState();
}

class _CategoryAddDialogState extends State<CategoryAddDialog> {
  bool _isLoading = false;
  String inputText = '';

  Future<void> _handleConfirm(String value) async {
    if (_isLoading) {
      return;
    }

    setState(() {
      _isLoading = true;
    });
    await Future.sync(() => widget.onConfirm(value));
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  _handleInput(String value) {
    setState(() {
      inputText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    void closeDialog() {
      Navigator.of(context, rootNavigator: true).pop(false);
    }

    return Container(
      width: 600,
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            blurRadius: 40,
            spreadRadius: 0,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextField(
            width: 510,
            hintText: '카테고리명',
            onChanged: _handleInput,
            fontSize: 20,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                label: '취소하기',
                onTap: closeDialog,
                buttonColor: AppColors.gray10,
                labelColor: AppColors.gray60,
              ),
              const SizedBox(
                width: 17,
              ),
              AppButton(
                label: '추가하기',
                onTap: () {
                  _handleConfirm(inputText);
                  closeDialog();
                },
                enable: inputText.isNotEmpty,
                buttonColor: AppColors.orange50,
              )
            ],
          )
        ],
      ),
    );
  }
}
