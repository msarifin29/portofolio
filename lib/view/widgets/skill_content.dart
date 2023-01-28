import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
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
      child: Column(
        children: Skill.content.map((e) {
          final title = e["title"] as String;
          final persentase = e["persentase"] as double;
          return ListTile(
            title: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall!,
            ),
            subtitle: Row(
              children: [
                LinearPercentIndicator(
                  width: widthBox,
                  lineHeight: Sizes.p12,
                  percent: persentase / 100,
                  barRadius: const Radius.circular(Sizes.p4),
                  progressColor: Colors.orange,
                ),
                Text(
                  "$persentase %",
                  style: Theme.of(context).textTheme.bodyMedium!,
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
