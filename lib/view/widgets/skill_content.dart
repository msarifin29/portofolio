import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portofolio/shared/constant/app_color.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import '../../shared/data/skill.dart';

class SkillContent extends StatelessWidget {
  const SkillContent({
    Key? key,
    required this.widthBox,
    this.heightBox,
    required this.padding,
  }) : super(key: key);

  final double widthBox;
  final double? heightBox;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBox,
      padding: EdgeInsets.only(top: padding),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: Sizes.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hard Skill",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 28.9),
                  ),
                  gapH24,
                  Wrap(
                    spacing: Sizes.p20,
                    runSpacing: Sizes.p20,
                    children: Skill.hardSkill.map((e) {
                      final title = e["title"] as String;
                      final persentase = e["persentase"] as double;
                      return CircularPercentIndicator(
                        radius: 80.0,
                        lineWidth: Sizes.p16,
                        animation: true,
                        percent: persentase / 100,
                        center: Text(
                          "$persentase %",
                          style: Theme.of(context).textTheme.displaySmall!,
                        ),
                        footer: Text(
                          title,
                          style: Theme.of(context).textTheme.headlineSmall!,
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: AppColor.orange,
                      );
                    }).toList(),
                  ),
                ],
              ),
              gapH32,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Soft Skill",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 38.0),
                  ),
                  gapH24,
                  Wrap(
                    spacing: Sizes.p20,
                    runSpacing: Sizes.p20,
                    children: Skill.softSkill.map((e) {
                      final title = e["title"] as String;
                      final persentase = e["persentase"] as double;
                      return CircularPercentIndicator(
                        radius: 80.0,
                        lineWidth: Sizes.p16,
                        animation: true,
                        percent: persentase / 100,
                        center: Text(
                          "$persentase %",
                          style: Theme.of(context).textTheme.displaySmall!,
                        ),
                        footer: Text(
                          title,
                          style: Theme.of(context).textTheme.headlineSmall!,
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: AppColor.orange,
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
