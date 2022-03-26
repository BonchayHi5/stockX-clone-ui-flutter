import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  // ignore: use_key_in_widget_constructors
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 300;

  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width >= 300 &&
  //     MediaQuery.of(context).size.width < 1000;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 800) {
          print(constraints.maxWidth);
          return desktop;
        } else if (constraints.maxWidth >= 300) {
          return mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}
