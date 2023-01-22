import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/sizes.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p8),
        child: Text(
          AppString.about,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.black),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
