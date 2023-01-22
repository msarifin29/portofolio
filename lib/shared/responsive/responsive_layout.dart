import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/break_point.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileView,
      required this.tabletView,
      required this.dekstopView,
      required this.extraLarge});

  final Widget mobileView;
  final Widget tabletView;
  final Widget dekstopView;
  final Widget extraLarge;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < Breakpoint.tablet) {
        return mobileView;
      } else if (constraint.maxWidth < Breakpoint.desktop) {
        return tabletView;
      } else if (constraint.maxWidth < Breakpoint.extra) {
        return dekstopView;
      }
      return extraLarge;
    });
  }
}
