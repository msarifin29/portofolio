import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/sizes.dart';

import '../../service/hive_service.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isDarkMode = false;

  // void _onPressedThemes() async {
  //   var isDarkmode = HiveService.instance.isDarkTheme(false);

  //   if (isDarkmode) {
  //     await HiveService.instance.currentTheme(false);
  //   } else {
  //     HiveService.instance.currentTheme(true);
  //   }
  // }
  void onStateChanged(bool isDarkMode) async {
    var themeDark = HiveService.instance.isDarkTheme(false);

    themeDark
        ? await HiveService.instance.currentTheme(false)
        : HiveService.instance.currentTheme(true);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Portofolio"),
      centerTitle: true,
      elevation: 1.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: Sizes.p12),
          child: DayNightSwitcherIcon(
            isDarkModeEnabled: isDarkMode,
            onStateChanged: onStateChanged,
          ),
        ),
      ],
    );
  }
}
