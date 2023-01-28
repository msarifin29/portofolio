// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/shared/constant/break_point.dart';
import 'package:portofolio/shared/utils/funtion_helper.dart';
import 'package:portofolio/view/widgets/about_me.dart';
import 'package:portofolio/view/widgets/text_head_line_small.dart';
import 'logo_button.dart';
import '../../shared/constant/app_string.dart';
import '../../shared/constant/sizes.dart';
import 'skill_content.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<Widget> _listContent = [
      gapH12,
      const TextHeadlineSmall(text: "About me"),
      Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p32, vertical: Sizes.p24),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p20),
          ),
          child: Container(
            padding: const EdgeInsets.all(1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Sizes.p20),
              child: const Image(
                height: 200.0,
                width: 140.0,
                image: AssetImage(AppString.photo),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      Text(
        AppString.fullName,
        style: Theme.of(context).textTheme.titleMedium!,
        textAlign: TextAlign.center,
      ),
      gapH12,
      Text(
        AppString.jobs,
        style: Theme.of(context).textTheme.titleSmall!,
      ),
      gapH12,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_pin,
            color: Theme.of(context).primaryIconTheme.color,
          ),
          Text(
            AppString.city,
            style: Theme.of(context).textTheme.titleSmall!,
          ),
        ],
      ),
      gapH12,
      const SizedBox(
        child: AboutMe(),
      ),
      gapH12,
      ListTile(
        onTap: FunctionHelper.init.urlWa,
        leading: Container(
          height: Sizes.p32,
          width: Sizes.p32,
          padding: const EdgeInsets.all(Sizes.p8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.p32 / 2),
              color: Colors.white),
          child: SvgPicture.asset(
            AppString.wa,
          ),
        ),
        title: Text(AppString.phone,
            style: Theme.of(context).textTheme.labelMedium!),
      ),
      ListTile(
        onTap: FunctionHelper.init.urlEmail,
        leading: Container(
          height: Sizes.p32,
          width: Sizes.p32,
          padding: const EdgeInsets.all(Sizes.p8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.p32 / 2),
              color: Colors.white),
          child: SvgPicture.asset(
            AppString.logoEmail,
          ),
        ),
        title: Text(
          AppString.email,
          style: Theme.of(context).textTheme.labelMedium!,
        ),
      ),
      gapH12,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoButton(
              onPressed: FunctionHelper.init.urlLinkedIn,
              image: AppString.linkedIn),
          gapW12,
          LogoButton(
              onPressed: FunctionHelper.init.urlGithub,
              image: AppString.github),
          gapW12,
        ],
      ),
      gapH12,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
        child: size.width < Breakpoint.desktop
            ? Divider(
                height: 2.0,
                color: Theme.of(context).iconTheme.color,
              )
            : const SizedBox.shrink(),
      ),
      gapH12,
      if (size.width < Breakpoint.extra)
        Column(
          crossAxisAlignment: size.width < Breakpoint.desktop
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: Sizes.p32),
              child: TextHeadlineSmall(text: "Tech Stack"),
            ),
            SkillContent(widthBox: 200.0, padding: Sizes.p4),
          ],
        )
      else
        const SizedBox.shrink(),
    ];
    return Container(
      width: size.width <= Breakpoint.tablet ? size.width : Breakpoint.mobile,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
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
