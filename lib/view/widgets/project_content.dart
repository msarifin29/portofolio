import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/break_point.dart';
import 'package:portofolio/shared/data/projects.dart';

import '../../shared/constant/sizes.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p18),
      child: Column(
        children: Projects.listProjects.map((data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                style: Theme.of(context).textTheme.headlineSmall!,
              ),
              gapH8,
              Container(
                height: Breakpoint.mobile - 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(data.image),
                  ),
                ),
              ),
              gapH12,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                child: Text(
                  data.desc,
                  style: Theme.of(context).textTheme.titleSmall!,
                  textAlign: TextAlign.center,
                ),
              ),
              gapH12,
              Wrap(
                spacing: Sizes.p8,
                runSpacing: Sizes.p4,
                children: data.component
                    .map(
                      (e) => Chip(
                        backgroundColor: Colors.blue,
                        label: Text(
                          e as String,
                          style: Theme.of(context).textTheme.labelMedium!,
                        ),
                      ),
                    )
                    .toList(),
              ),
              gapH12,
              ListTile(
                onTap: data.onTap,
                leading: Container(
                  height: Sizes.p32,
                  width: Sizes.p32,
                  padding: const EdgeInsets.all(Sizes.p8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Sizes.p32 / 2),
                      color: Colors.white),
                  child: SvgPicture.asset(
                    AppString.github,
                  ),
                ),
                title: Text(
                  data.url,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: Colors.blue,
                      ),
                ),
              ),
              Divider(
                height: 2.0,
                color: Theme.of(context).iconTheme.color,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
