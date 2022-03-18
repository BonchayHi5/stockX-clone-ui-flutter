import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  final Widget child;

  const WebLayout({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        Container(
          width: MediaQuery.of(context).size.width * 0.96,
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth > 1360
                  ? MediaQuery.of(context).size.width * 0.12
                  : 0),
          child: Center(child: child),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      ],
    );
  }
}
