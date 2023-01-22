import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/text_head_line_small.dart';

import '../shared/constant/sizes.dart';
import 'widgets/profile_content.dart';
import 'widgets/project_content.dart';
import 'widgets/skill_content.dart';

class ExtraView extends StatelessWidget {
  const ExtraView({super.key});

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
                  const TextHeadlineSmall(text: "Personal project"),
                  gapH12,
                  ProjectContent(heightBox: size.height * 0.85),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: Sizes.p32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeadlineSmall(text: "Skill"),
                  Expanded(
                    child: SkillContent(
                        widthImage: Sizes.p200,
                        heightBox: size.height * 0.8,
                        padding: Sizes.p12),
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
