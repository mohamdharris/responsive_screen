import 'package:flutter/material.dart';
import 'package:responsive_screen/dimension.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget? desktop;
  const ResponsiveWidget(
      {Key? key, required this.mobile, required this.tab, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobile;
        } else {
          return tab;
        }
      },
    );
  }
}
