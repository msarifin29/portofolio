import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/constant/sizes.dart';

class LogoButton extends StatelessWidget {
  const LogoButton({super.key, required this.onPressed, required this.image});

  final Function()? onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.p32,
      width: Sizes.p32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.p32 / 2),
          color: Colors.white),
      child: IconButton(
          icon: SvgPicture.asset(
            image,
            width: Sizes.p32,
            height: Sizes.p32,
            fit: BoxFit.contain,
          ),
          onPressed: onPressed),
    );
  }
}
