// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/project_screen.dart';
import 'package:portofolio/view/screen/skill_screen.dart';
import 'package:portofolio/view/widgets/profile_content.dart';
import 'package:portofolio/view/widgets/title_chip_widget.dart';

import 'widgets/photo_profile_widget.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.all(Sizes.p24),
          child: Column(
            children: [
              gapH8,
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
