// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/widgets/back_end_skill_widget.dart';

import 'front_end_skill_widget.dart';

class SkillContentRowWidget extends StatelessWidget {
  const SkillContentRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    return Container(
      height: size,
      padding: const EdgeInsets.all(20.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FrontEndSkillWidget(),
          gapW20,
          BackEndSkillIwdget(),
        ],
      ),
    );
  }
}

class SkillContentWidget extends StatelessWidget {
  const SkillContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    return Container(
      height: size,
      padding: const EdgeInsets.all(20.0),
      child: const SingleChildScrollView(
        padding: EdgeInsets.only(left: Sizes.p20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            FrontEndSkillWidget(),
            gapH20,
            BackEndSkillIwdget(),
          ],
        ),
      ),
    );
  }
}
