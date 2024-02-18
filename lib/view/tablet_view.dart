import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import 'screen/project_screen.dart';
import 'screen/skill_screen.dart';
import 'widgets/photo_profile_widget.dart';
import 'widgets/profile_content.dart';
import 'widgets/title_chip_widget.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleChipWidget(text: 'About me'),
              gapH16,
              PhotoProfileWidget(min: 120.0, max: 150.0),
              gapH20,
              ProfileContent(),
              gapH20,
              TitleChipWidget(text: 'Project'),
              ProjectScreen(),
              gapH20,
              TitleChipWidget(text: 'Skill'),
              SkillScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
