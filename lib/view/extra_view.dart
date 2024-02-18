// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/project_screen.dart';
import 'package:portofolio/view/widgets/about_me_and_skill_widget.dart';

import 'widgets/title_chip_widget.dart';

class ExtraView extends StatelessWidget {
  const ExtraView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            const Expanded(child: AboutMeAndSkillWidget()),
            Expanded(child: _ProjectExtra()),
          ],
        ),
      ),
    );
  }
}

class _ProjectExtra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        gapH8,
        TitleChipWidget(text: 'Project'),
        gapH16,
        ProjectScreen(),
      ],
    );
  }
}
