// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/project_screen.dart';

import '../shared/constant/app_color.dart';
import 'screen/personal_screen.dart';
import 'screen/skill_screen.dart';
import 'widgets/custom_app_bar.dart';

class ExtraView extends StatefulWidget {
  const ExtraView({super.key});

  @override
  State<ExtraView> createState() => _ExtraViewState();
}

class _ExtraViewState extends State<ExtraView> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(
          tabBar: TabBar(
              controller: _tabController,
              indicatorPadding: const EdgeInsets.only(top: Sizes.p20),
              overlayColor: const MaterialStatePropertyAll(AppColor.nokiaBlue),
              labelStyle: Theme.of(context).textTheme.headlineMedium!,
              splashBorderRadius: BorderRadius.circular(20.0),
              indicatorColor: AppColor.nokiaBlue,
              tabs: const [
                Tab(
                  text: "About me",
                ),
                Tab(
                  text: "Project",
                ),
                Tab(
                  text: "Skill",
                ),
              ]),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          PersonalScreen(min: 200.0, max: 300.0),
          ProjectScreen(),
          SkillScreen(),
        ],
      ),
    );
  }
}
