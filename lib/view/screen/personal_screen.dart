import 'package:flutter/material.dart';

import '../../shared/constant/sizes.dart';
import '../widgets/photo_profile_widget.dart';
import '../widgets/profile_content.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({
    super.key,
    required this.min,
    required this.max,
  });

  final double min;
  final double max;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          PhotoProfileWidget(
            min: min,
            max: max,
          ),
          gapH20,
          const ProfileContent(),
        ],
      ),
    );
  }
}
