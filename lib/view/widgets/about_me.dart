import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/sizes.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(Sizes.p16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                text: 'Hi, I\'m',
                style: Theme.of(context).textTheme.headlineSmall,
                children: [
                  TextSpan(
                    text: " ${AppString.fullName} ",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: AppColor.nokiaBlue,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            gapH8,
            Text(
              AppString.aboutFlutter,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ));
  }
}
