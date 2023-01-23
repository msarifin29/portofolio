import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import '../../shared/data/skill.dart';

class SkillContent extends StatelessWidget {
  const SkillContent({
    Key? key,
    required this.widthBox,
    required this.heightBox,
    required this.padding,
  }) : super(key: key);

  final double widthBox;
  final double heightBox;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightBox,
      padding: EdgeInsets.only(top: padding),
      child: ListView.builder(
          itemCount: Skill.content.length,
          itemBuilder: (context, index) {
            final content = Skill.content[index];
            final title = content["title"] as String;
            final persentase = content["persentase"] as double;
            return ListTile(
              title: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontSize: Sizes.p18),
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
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.orange),
                  )
                ],
              ),
            );
          }),
    );
  }
}
