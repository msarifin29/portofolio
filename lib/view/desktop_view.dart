import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/profile_content.dart';

import '../shared/constant/sizes.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/project_content.dart';
import 'widgets/text_head_line_small.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: CustomAppBar(),
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: Sizes.p4),
              child: Card(
                color: Theme.of(context).cardColor,
                child: const ProfileContent(),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: Sizes.p4),
              child: Card(
                color: Theme.of(context).cardColor,
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: const TextHeadlineSmall(
                        text: "Personal Project",
                      ),
                    ),
                    gapH8,
                    const ProjectContent(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
