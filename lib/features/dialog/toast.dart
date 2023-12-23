import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/theme/text_style.dart';

void showMessageToast({
  required BuildContext context,
  required String message,
  int milliseconds = 2000,
}) {
  final toast = FToast();
  toast.init(context);
  toast.removeCustomToast();
  toast.removeQueuedCustomToasts();
  toast.showToast(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 350,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: ShapeDecoration(
              color: Colors.black.withOpacity(0.75),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyle.body14m140.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(milliseconds: milliseconds));
}
