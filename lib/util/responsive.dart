import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key, required this.desktop, required this.mobile})
      : super(key: key);

  final Widget desktop;
  final Widget mobile;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return desktop;
        }
        return mobile;
      },
    );
  }
}
