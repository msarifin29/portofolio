import 'package:flutter/material.dart';
import 'package:portofolio/models/production_model.dart';
import 'package:portofolio/shared/constant/app_color.dart';
import 'package:portofolio/shared/constant/sizes.dart';
import 'package:portofolio/view/screen/project_screen.dart';

import 'button_app_store_widget.dart';

class ItemProject extends StatelessWidget {
  const ItemProject({
    super.key,
    required this.production,
  });

  final ProductionModel production;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleProjectWidget(title: production.title),
          gapH20,
          Image.network(
            production.imageUrl,
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
                  onPressed: production.onPressedAndroid,
                  icon: Icons.android,
                  label: 'Play Store'),
              gapW16,
              ButtonAppStoreWidget(
                  onPressed: production.onPressedApple,
                  icon: Icons.apple,
                  label: 'App Store'),
            ],
          ),
          gapH20,
          Text(
            production.desc,
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
            children: production.tools.map((t) {
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
          Text('Status : ${production.status}'),
        ],
      ),
    );
  }
}
