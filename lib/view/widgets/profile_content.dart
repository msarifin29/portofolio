// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/shared/utils/funtion_helper.dart';
import 'package:portofolio/view/widgets/about_me.dart';
import 'logo_button.dart';
import '../../shared/constant/app_string.dart';
import '../../shared/constant/sizes.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff2C1250),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.p12),
        child: Column(
          children: [
            Text(
              "About me",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
            gapH12,
            CircleAvatar(
              radius: Sizes.p100,
              backgroundColor: Colors.grey[300],
              backgroundImage: const AssetImage(AppString.photo),
            ),
            gapH12,
            Text(
              AppString.fullName,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.orange),
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
                const Icon(
                  Icons.location_pin,
                  color: Colors.orange,
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
              leading: SvgPicture.asset(AppString.wa,
                  height: Sizes.p20, width: Sizes.p20),
              title: Text(
                AppString.phone,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: FunctionHelper.init.urlEmail,
              leading: SvgPicture.asset(AppString.logoEmail,
                  height: Sizes.p20, width: Sizes.p20),
              title: Text(
                AppString.email,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.white),
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
            )
          ],
        ),
      ),
    );
  }
}
