import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';

class ButtonAppStoreWidget extends StatelessWidget {
  const ButtonAppStoreWidget({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
  });
  final VoidCallback? onPressed;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(backgroundColor: AppColor.snowWhite),
    );
  }
}
