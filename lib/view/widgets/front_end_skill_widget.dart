import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import 'title_skill_widget.dart';

class FrontEndSkillWidget extends StatelessWidget {
  const FrontEndSkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'RESTful API integration ',
      'State Management (BLOC)',
      'Clean Architecture',
      'Responsive Design',
      'Third-party libraries',
      'Troubleshoot & debug issues',
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
        const TitleSkillWidget(
          text: 'Flutter',
          image: AppString.flutter,
        ),
        gapH16,
        ...contents,
      ],
    );
  }
}
