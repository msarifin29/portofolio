// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_color.dart';

import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/shared/data/projects.dart';

import '../widgets/button_app_store_widget.dart';

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleProjectWidget(title: item[itemIndex].title),
                gapH20,
                Image.network(
                  item[itemIndex].imageUrl,
                  repeat: ImageRepeat.repeat,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
                gapH20,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ButtonAppStoreWidget(
                        onPressed: item[itemIndex].onPressedAndroid,
                        icon: Icons.android,
                        label: 'Play Store'),
                    gapW16,
                    ButtonAppStoreWidget(
                        onPressed: item[itemIndex].onPressedApple,
                        icon: Icons.apple,
                        label: 'App Store'),
                  ],
                ),
                gapH20,
                Text(
                  item[itemIndex].desc,
                  textAlign: TextAlign.center,
                ),
                gapH20,
                Text(
                  'Tools',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColor.snowWhite,
                        decoration: TextDecoration.underline,
                      ),
                ),
                gapH20,
                Wrap(
                  spacing: 10.0,
                  runSpacing: 5.0,
                  children: item[itemIndex].tools.map((t) {
                    return Chip(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: AppColor.snowWhite),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      label: Text(
                        t,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColor.night),
                      ),
                    );
                  }).toList(),
                ),
                gapH20,
                Text('Status : ${item[itemIndex].status}'),
              ],
            ),
          ),
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
