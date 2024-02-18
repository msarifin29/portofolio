import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/personal_screen.dart';
import 'package:portofolio/view/screen/skill_screen.dart';

import 'title_chip_widget.dart';

class AboutMeAndSkillWidget extends StatelessWidget {
  const AboutMeAndSkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          gapH8,
          TitleChipWidget(text: 'About me'),
          gapH8,
          PersonalScreen(min: 100.0, max: 150.0),
          gapH20,
          TitleChipWidget(text: 'Skill'),
          SkillScreen(),
        ],
      ),
    );
  }
}
