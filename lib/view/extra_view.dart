import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/text_head_line_small.dart';

import '../shared/constant/sizes.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/profile_content.dart';
import 'widgets/project_content.dart';
import 'widgets/skill_content.dart';

class ExtraView extends StatelessWidget {
  const ExtraView({super.key});

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
            child: Card(
              color: Theme.of(context).cardColor,
              margin: const EdgeInsets.only(top: Sizes.p8),
              child: ListView(
                children: [
                  gapH12,
                  Container(
                    alignment: Alignment.center,
                    child: const TextHeadlineSmall(text: "Personal project"),
                  ),
                  gapH12,
                  const ProjectContent(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: Sizes.p4),
              child: Card(
                color: Theme.of(context).cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    gapH12,
                    Padding(
                      padding: EdgeInsets.only(left: Sizes.p32),
                      child: TextHeadlineSmall(text: "Tech Stack"),
                    ),
                    Expanded(
                      child: SkillContent(
                          widthBox: Sizes.p200, padding: Sizes.p12),
                    ),
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
