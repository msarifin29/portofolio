import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/sizes.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(Sizes.p16),
        child: RichText(
          text: TextSpan(
            text: 'Hi, I am',
            style: Theme.of(context).textTheme.displaySmall!,
            children: [
              TextSpan(
                text: " ${AppString.fullName} ",
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w900,
                      fontSize: Sizes.p48,
                    ),
              ),
              TextSpan(
                text: AppString.about,
                style: Theme.of(context).textTheme.displaySmall!,
              ),
            ],
          ),
        ));
  }
}
