// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_string.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/widgets/back_end_skill_widget.dart';
import 'package:portofolio/view/widgets/title_skill_widget.dart';

import 'front_end_skill_widget.dart';

class SkillContent extends StatelessWidget {
  const SkillContent({
    super.key,
    required this.widthBox,
    this.heightBox,
    required this.padding,
  });

  final double widthBox;
  final double? heightBox;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBox,
      padding: EdgeInsets.only(top: padding),
      child: const SingleChildScrollView(
        padding: EdgeInsets.only(left: Sizes.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            FrontEndSkillWidget(),
            gapH20,
            BackEndSkillIwdget(),
            gapH20,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TitleSkillWidget(text: 'My SQL', image: AppString.mysql),
                gapW16,
                Text('Basic'),
              ],
            ),
            gapH20,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TitleSkillWidget(text: 'Postgresql', image: AppString.postgres),
                gapW16,
                Text('Basic'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
