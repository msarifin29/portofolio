// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/shared/data/projects.dart';
import 'package:portofolio/view/widgets/item_project.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CarouselSlider.builder(
      itemCount: Projects.productions.length,
      itemBuilder: (context, itemIndex, pageViewIndex) {
        final item = Projects.productions;
        return Container(
          width: size.width,
          padding: const EdgeInsets.all(Sizes.p16),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ItemProject(production: item[itemIndex]),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        height: size.height * 0.9,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
      ),
    );
  }
}

class TitleProjectWidget extends StatelessWidget {
  const TitleProjectWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColor.night),
      ),
      backgroundColor: AppColor.snowWhite,
      shape: const RoundedRectangleBorder(
        side: BorderSide(color: AppColor.snowWhite),
      ),
    );
  }
}
