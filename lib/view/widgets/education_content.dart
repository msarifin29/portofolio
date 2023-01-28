import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/app_string.dart';

import '../../shared/constant/sizes.dart';

class EducationContent extends StatelessWidget {
  const EducationContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: SizedBox(
            height: Sizes.p32,
            width: Sizes.p32,
            child: Image.asset(
              AppString.medikbud,
              fit: BoxFit.cover,
            ),
          ),
          title: const Text("SMA Plus"),
          subtitle: const Text("2008 - 2011"),
        ),
        ListTile(
          leading: SizedBox(
            height: Sizes.p32,
            width: Sizes.p32,
            child: Image.asset(
              AppString.utLogo,
              fit: BoxFit.cover,
            ),
          ),
          title: const Text("Universitas Terbuka"),
          subtitle: const Text("2019 - Sekarang"),
        ),
      ],
    );
  }
}
