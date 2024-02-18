import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/shared/data/projects.dart';

import 'item_project.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

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
