// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/project_screen.dart';
import 'package:portofolio/view/screen/skill_screen.dart';
import 'package:portofolio/view/widgets/profile_content.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/photo_profile_widget.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(
          tabBar: TabBar(
              controller: _tabController,
              indicatorPadding: const EdgeInsets.only(top: Sizes.p20),
              overlayColor: const MaterialStatePropertyAll(AppColor.nokiaBlue),
              labelStyle: Theme.of(context).textTheme.headlineSmall,
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
        children: [
          const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(Sizes.p24),
              child: Column(
                children: [
                  PhotoProfileWidget(min: 120.0, max: 150.0),
                  ProfileContent(),
                ],
              ),
            ),
          ),
          ProjectScreen(
            heightImage: size.height,
            marginContent: Sizes.p8,
          ),
          const SkillScreen(),
        ],
      ),
    );
  }
}
