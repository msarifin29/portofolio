// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
    required this.tabBar,
  }) : super(key: key);

  final TabBar tabBar;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // title: const Text("Portofolio"),
      // centerTitle: true,
      // elevation: 1.0,
      bottom: widget.tabBar,
    );
  }
}
