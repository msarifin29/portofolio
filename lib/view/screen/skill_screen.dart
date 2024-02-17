import 'package:flutter/material.dart';
import 'package:portofolio/shared/constant/break_point.dart';
import 'package:portofolio/view/widgets/skill_content.dart';

class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < Breakpoint.extra) {
        return const SkillContentWidget();
      }
      return const SkillContentRowWidget();
    });
  }
}
