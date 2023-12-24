import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:flutter/material.dart';

class AppDialog extends StatefulWidget {
  final String label;
  final String cancelLabel;
  final String confirmLabel;
  final VoidCallback onCancel;
  final VoidCallback onConfirm;

  const AppDialog({
    super.key,
    required this.label,
    required this.onCancel,
    required this.onConfirm,
    this.cancelLabel = '돌아가기',
    this.confirmLabel = '나가기',
  });

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  bool _isLoading = false;

  Future<void> _handleConfirm() async {
    if (_isLoading) {
      return;
    }

    setState(() {
      _isLoading = true;
    });
    await Future.sync(widget.onConfirm);
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _handleCancel() async {
    if (_isLoading) {
      return;
    }

    setState(() {
      _isLoading = true;
    });
    await Future.sync(widget.onCancel);
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
          Text(
            widget.label,
            style: AppTextStyle.title22b136,
          ),
          const SizedBox(
            height: 47,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                label: widget.cancelLabel,
                onTap: _handleCancel,
                buttonColor: AppColors.gray10,
                labelColor: AppColors.gray60,
              ),
              const SizedBox(
                width: 17,
              ),
              AppButton(
                label: widget.confirmLabel,
                onTap: _handleConfirm,
                buttonColor: AppColors.orange50,
              )
            ],
          )
        ],
      ),
    );
  }
}
