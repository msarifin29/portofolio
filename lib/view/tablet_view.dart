import 'package:flutter/material.dart';

import '../shared/constant/sizes.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/profile_content.dart';
import 'widgets/project_content.dart';
import 'widgets/text_head_line_small.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(),
      ),
      body: ListView(
        children: [
          const ProfileContent(),
          gapH12,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p18),
            child: Divider(
              height: 2.0,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: const TextHeadlineSmall(text: "Personal project"),
          ),
          gapH12,
          const ProjectContent(),
        ],
      ),
    );
  }
}
