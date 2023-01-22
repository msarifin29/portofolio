import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/profile_content.dart';

import '../shared/constant/break_point.dart';
import '../shared/constant/sizes.dart';
import 'widgets/project_content.dart';
import 'widgets/skill_content.dart';
import 'widgets/text_head_line_small.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portofolio"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          const ProfileContent(),
          Expanded(
            flex: 2,
            child: Container(
              height: size.height,
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeadlineSmall(
                    text: "Personal Project",
                  ),
                  gapH8,
                  ProjectContent(heightBox: size.height * 0.6),
                  gapH8,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextHeadlineSmall(text: "Skill"),
                      SkillContent(
                          widthImage: Breakpoint.mobile,
                          heightBox: size.height * 0.2,
                          padding: Sizes.p4),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
