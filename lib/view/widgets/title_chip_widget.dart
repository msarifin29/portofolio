import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';

class TitleChipWidget extends StatelessWidget {
  const TitleChipWidget({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: AppColor.nokiaBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: AppColor.nokiaBlue),
      ),
      label: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
