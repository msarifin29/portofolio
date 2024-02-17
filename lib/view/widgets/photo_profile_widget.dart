// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../shared/constant/app_string.dart';

class PhotoProfileWidget extends StatelessWidget {
  const PhotoProfileWidget({
    super.key,
    required this.min,
    required this.max,
  });

  final double min;
  final double max;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: min,
      maxRadius: max,
      backgroundImage: const AssetImage(AppString.photo),
    );
  }
}
