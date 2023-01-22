import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:portofolio/shared/constant/break_point.dart';
import 'package:portofolio/shared/data/projects.dart';

import '../../shared/constant/sizes.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    Key? key,
    required this.heightBox,
  }) : super(key: key);

  final double heightBox;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightBox,
      child: ListView.builder(
        itemCount: Projects.listProjects.length,
        itemBuilder: (context, index) {
          final data = Projects.listProjects[index];
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  data.title,
                  style: Theme.of(context).textTheme.headlineSmall!,
                ),
                gapH8,
                Container(
                  height: Breakpoint.mobile,
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
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.black),
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
                          backgroundColor: const Color(0xff4F349F),
                          label: Text(
                            e as String,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                      .toList(),
                ),
                gapH12,
                ListTile(
                  onTap: data.onTap,
                  leading: SvgPicture.asset(AppString.github,
                      height: Sizes.p20, width: Sizes.p20),
                  title: Text(data.url,
                      style: Theme.of(context).textTheme.labelMedium!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
