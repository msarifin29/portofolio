import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/personal_screen.dart';
import 'package:portofolio/view/screen/project_screen.dart';
import 'package:portofolio/view/screen/skill_screen.dart';

import '../shared/constant/app_color.dart';
import 'widgets/custom_app_bar.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> with TickerProviderStateMixin {
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
              overlayColor: const MaterialStatePropertyAll(AppColor.poseidon),
              labelStyle: Theme.of(context).textTheme.headlineMedium!,
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
            child: Column(
              children: [
                PersonalScreen(min: 150.0, max: 200.0),
              ],
            ),
          ),
          ProjectScreen(
            heightImage: size.height,
            marginContent: Sizes.p20,
          ),
          const SkillScreen(),
        ],
      ),
    );
  }
}
