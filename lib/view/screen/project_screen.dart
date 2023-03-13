// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/shared/constant/app_string.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/shared/data/projects.dart';
import 'package:portofolio/view/widgets/profile_content.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    Key? key,
    required this.heightImage,
    this.marginContent = Sizes.p100,
  }) : super(key: key);

  final double heightImage;
  final double marginContent;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CarouselSlider.builder(
      itemCount: Projects.listProjects.length,
      itemBuilder: (context, itemIndex, pageViewIndex) {
        final item = Projects.listProjects;
        return Container(
          width: size.width,
          padding: const EdgeInsets.all(Sizes.p16),
          margin: EdgeInsets.symmetric(horizontal: marginContent),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(item[itemIndex].image)),
                gapH20,
                InformationProfileWidget(
                  onTap: item[itemIndex].onTap!,
                  image: SvgPicture.asset(AppString.github),
                  title: "github",
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        height: heightImage,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
      ),
    );
  }
}
