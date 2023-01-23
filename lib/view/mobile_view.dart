import 'package:flutter/material.dart';
import 'package:portofolio/view/widgets/profile_content.dart';
import 'package:portofolio/view/widgets/project_content.dart';

import '../shared/constant/break_point.dart';
import '../shared/constant/sizes.dart';
import 'widgets/skill_content.dart';
import 'widgets/text_head_line_small.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portofolio"),
        centerTitle: true,
      ),
      drawer: const ProfileContent(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextHeadlineSmall(text: "Personal project"),
              gapH12,
              ProjectContent(heightBox: size.height * 0.55),
              gapH12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextHeadlineSmall(text: "Skill"),
                  SkillContent(
                      widthBox: Breakpoint.mobile - 20.0,
                      heightBox: size.height * 0.25,
                      padding: Sizes.p8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
