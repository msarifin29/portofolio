// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:portofolio/shared/constant/break_point.dart';
import 'package:portofolio/shared/utils/funtion_helper.dart';
import 'package:portofolio/view/widgets/about_me.dart';

import '../../shared/constant/app_string.dart';
import '../../shared/constant/sizes.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Widget> _listContent = [
      gapH12,
      const SizedBox(
        child: AboutMe(),
      ),
      gapH12,
      InformationProfileWidget(
        onTap: FunctionHelper.init.urlWa,
        image: SvgPicture.asset(AppString.wa),
        title: AppString.phone,
      ),
      InformationProfileWidget(
        onTap: FunctionHelper.init.urlEmail,
        image: SvgPicture.asset(AppString.logoEmail),
        title: AppString.email,
      ),
      InformationProfileWidget(
        onTap: FunctionHelper.init.urlLinkedIn,
        image: SvgPicture.asset(AppString.linkedIn),
        title: AppString.fullName,
      ),
      InformationProfileWidget(
        onTap: FunctionHelper.init.urlGithub,
        image: SvgPicture.asset(AppString.github),
        title: AppString.githubName,
      ),
    ];
    return SizedBox(
      width: size.width <= Breakpoint.tablet ? size.width : Breakpoint.mobile,
      child: size.width <= Breakpoint.tablet
          ? Column(
              children: _listContent,
            )
          : SingleChildScrollView(
              child: Column(
                children: _listContent,
              ),
            ),
    );
  }
}

class InformationProfileWidget extends StatelessWidget {
  const InformationProfileWidget({
    Key? key,
    required this.onTap,
    required this.image,
    required this.title,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: Sizes.p32,
        width: Sizes.p32,
        padding: const EdgeInsets.all(Sizes.p8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p32 / 2),
            color: Colors.white),
        child: image,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: Sizes.p18,
            ),
      ),
    );
  }
}
