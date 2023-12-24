import 'package:check_order_admin/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final String label;
  final Color? labelColor;
  final Widget? child;
  final double width;
  final double height;
  final Color buttonColor;
  final bool enable;
  final VoidCallback onTap;

  const AppButton({
    super.key,
    required this.label,
    this.labelColor,
    this.child,
    this.width = 248,
    this.height = 58,
    this.enable = true,
    this.buttonColor = AppColors.orange40,
    required this.onTap,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isLoading = false;

  Future<void> _handlePress() async {
    if (_isLoading || !widget.enable) {
      return;
    }

    setState(() {
      _isLoading = true;
    });
    await Future.sync(widget.onTap);
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.enable ? () async => await _handlePress() : null,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          fixedSize: Size(widget.width, widget.height),
          disabledBackgroundColor: AppColors.gray10,
          backgroundColor: widget.buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Center(
        child: _isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : widget.child ??
                Text(
                  widget.label,
                  style: TextStyle(
                    color: widget.labelColor ?? Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      ),
    );
  }
}
