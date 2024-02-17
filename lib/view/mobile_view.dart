// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/project_screen.dart';
import 'package:portofolio/view/screen/skill_screen.dart';
import 'package:portofolio/view/widgets/profile_content.dart';

import 'widgets/photo_profile_widget.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            children: [
              Text(
                "About me",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
              ),
              gapH16,
              const PhotoProfileWidget(min: 120.0, max: 150.0),
              gapH20,
              const ProfileContent(),
              gapH20,
              Text(
                "Project",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
              ),
              const ProjectScreen(),
              gapH20,
              Text(
                "Skill",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
              ),
              const SkillScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
