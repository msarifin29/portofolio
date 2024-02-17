import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/widgets/title_skill_widget.dart';

class BackEndSkillIwdget extends StatelessWidget {
  const BackEndSkillIwdget({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'Gin Web Framework',
    ];
    List<Widget> contents = List.generate(skills.length, (index) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            value: true,
            onChanged: (bool? value) {},
            checkColor: AppColor.nokiaBlue,
            fillColor: const MaterialStatePropertyAll(AppColor.snowWhite),
          ),
          gapW12,
          Text(
            skills[index],
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColor.snowWhite,
                ),
          ),
        ],
      );
    });
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            TitleSkillWidget(text: 'Go', image: AppString.go),
            gapW16,
            Text('Basic'),
          ],
        ),
        gapH16,
        ...contents,
      ],
    );
  }
}
