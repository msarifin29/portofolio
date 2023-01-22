import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portofolio/view/desktop_view.dart';
import 'package:portofolio/view/extra_view.dart';
import 'package:portofolio/view/mobile_view.dart';
import 'package:portofolio/shared/responsive/responsive_layout.dart';
import 'package:portofolio/view/tablet_view.dart';

import 'shared/constant/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      // darkTheme: ThemeData.dark(useMaerial3: true),
      home: const ResponsiveLayout(
        mobileView: MobileView(),
        tabletView: TabletView(),
        dekstopView: DesktopView(),
        extraLarge: ExtraView(),
      ),
    );
  }
}
