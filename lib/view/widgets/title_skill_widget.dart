import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portofolio/shared/constant/app_color.dart';

class TitleSkillWidget extends StatelessWidget {
  const TitleSkillWidget({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: SvgPicture.asset(
        image,
        height: 30.0,
        width: 30.0,
      ),
      backgroundColor: AppColor.snowWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: const BorderSide(color: AppColor.snowWhite),
      ),
      label: Text(
        text,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 24.0,
              color: AppColor.night,
            ),
      ),
    );
  }
}
