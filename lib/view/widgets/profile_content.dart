// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portofolio/shared/utils/funtion_helper.dart';
import 'package:portofolio/view/widgets/about_me.dart';
import 'package:portofolio/view/widgets/text_head_line_small.dart';
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
                  child: AspectRatio(
                    aspectRatio: 3 / 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(Sizes.p20),
                      child: const Image(
                        image: AssetImage(AppString.photo),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              AppString.fullName,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            gapH12,
            Text(
              AppString.jobs,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white),
            ),
            gapH12,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_pin,
                  color: Colors.white,
                ),
                Text(
                  AppString.city,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white),
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
