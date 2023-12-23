import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String text = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    if (text.length >= 8) {
      text = text.substring(0, 8);
      text =
          '${text.substring(0, 4)}.${text.substring(4, 6)}.${text.substring(6, 8)}';

      if (!_isValidBirthday(text)) {
        return oldValue;
      }
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }

  bool _isValidBirthday(String text) {
    try {
      DateTime dateTime = DateFormat('yyyy.MM.dd').parseStrict(text);
      return (dateTime.year >= 1900 && dateTime.isBefore(DateTime.now()));
    } catch (e) {
      return false;
    }
  }
}
