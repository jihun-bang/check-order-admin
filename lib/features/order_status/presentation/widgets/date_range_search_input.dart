import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';

class SearchInput {
  final String startDate;
  final String endDate;
  final String? tableName;

  SearchInput({required this.startDate, required this.endDate, this.tableName});
}

class DateRangeSearchInput extends StatefulWidget {
  final void Function(SearchInput) onConfirm;
  const DateRangeSearchInput({super.key, required this.onConfirm});

  @override
  State<DateRangeSearchInput> createState() => _DateRangeSearchInputState();
}

class _DateRangeSearchInputState extends State<DateRangeSearchInput> {
  String startDate = '';
  String endDate = '';
  String tableName = '';

  @override
  Widget build(BuildContext context) {
    bool isValid = startDate.length == 10 && endDate.length == 10;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.20),
              offset: Offset(0, 2),
              blurRadius: 12,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 30,
            children: [
              Text(
                '주문 기간 검색',
                style:
                    AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
              ),
              Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  CustomTextField(
                    width: 230,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      DateTextFormatter()
                    ],
                    hintText: 'YYYY-MM-DD',
                    onChanged: (v) {
                      setState(() {
                        startDate = v;
                      });
                    },
                  ),
                  const Text('-'),
                  CustomTextField(
                    width: 230,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      DateTextFormatter()
                    ],
                    hintText: 'YYYY-MM-DD',
                    onChanged: (v) {
                      setState(() {
                        endDate = v;
                      });
                    },
                  ),
                ],
              ),
              CustomTextField(
                width: 180,
                hintText: '테이블 이름',
                onChanged: (v) {
                  setState(() {
                    tableName = v;
                  });
                },
              ),
              AppButton(
                width: 115,
                buttonColor: AppColors.orange50,
                label: '검색',
                enable: isValid,
                onTap: () {
                  SearchInput value = SearchInput(
                    startDate: startDate,
                    endDate: endDate,
                    tableName: tableName,
                  );

                  widget.onConfirm(value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final double? width;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    this.width,
    this.keyboardType,
    this.inputFormatters,
    this.hintText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.gray30),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          fillColor: AppColors.gray10,
        ),
        style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
      ),
    );
  }
}

class DateTextFormatter extends TextInputFormatter {
  static const _maxChars = 8;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String separator = '-';
    var text = _format(
      newValue.text,
      oldValue.text,
      separator,
    );

    return newValue.copyWith(
      text: text,
      selection: updateCursorPosition(
        oldValue,
        text,
      ),
    );
  }

  String _format(
    String value,
    String oldValue,
    String separator,
  ) {
    var isErasing = value.length < oldValue.length;
    var isComplete = value.length > _maxChars + 2;

    if (!isErasing && isComplete) {
      return oldValue;
    }

    value = value.replaceAll(separator, '');
    final result = <String>[];

    for (int i = 0; i < min(value.length, _maxChars); i++) {
      result.add(value[i]);
      if ((i == 3 || i == 5) && i != value.length - 1) {
        result.add(separator);
      }
    }

    return result.join();
  }

  TextSelection updateCursorPosition(
    TextEditingValue oldValue,
    String text,
  ) {
    var endOffset = max(
      oldValue.text.length - oldValue.selection.end,
      0,
    );

    var selectionEnd = text.length - endOffset;

    return TextSelection.fromPosition(TextPosition(offset: selectionEnd));
  }
}
