import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  final Widget child;

  const WebLayout({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(),
        ),
        SizedBox(
          width: 1300,
          child: child,
        ),
        Flexible(flex: 2, child: Container())
      ],
    );
  }
}
