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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Theme.of(context).cardColor,
              child: Column(
                children: [
                  Text(
                    "Hard Skill",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  gapH24,
                  Column(
                    children: Skill.hardSkill.map((e) {
                      final title = e["title"] as String;
                      final persentase = e["persentase"] as double;
                      return ListTile(
                        title: Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium!,
                        ),
                        subtitle: Row(
                          children: [
                            LinearPercentIndicator(
                              width: widthBox,
                              lineHeight: Sizes.p18,
                              percent: persentase / 100,
                              barRadius: const Radius.circular(Sizes.p4),
                              progressColor: AppColor.italyOrche,
                            ),
                            Text(
                              "$persentase %",
                              style: Theme.of(context).textTheme.titleMedium!,
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            gapH32,
            Card(
              color: Theme.of(context).cardColor,
              child: Column(
                children: [
                  Text(
                    "Soft Skill",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  gapH24,
                  Column(
                    children: Skill.softSkill.map((e) {
                      final title = e["title"] as String;
                      final persentase = e["persentase"] as double;
                      return ListTile(
                        title: Text(
                          title,
                          style: Theme.of(context).textTheme.headlineMedium!,
                        ),
                        subtitle: Row(
                          children: [
                            LinearPercentIndicator(
                              width: widthBox,
                              lineHeight: Sizes.p18,
                              percent: persentase / 100,
                              barRadius: const Radius.circular(Sizes.p4),
                              progressColor: AppColor.italyOrche,
                            ),
                            Text(
                              "$persentase %",
                              style: Theme.of(context).textTheme.titleMedium!,
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
