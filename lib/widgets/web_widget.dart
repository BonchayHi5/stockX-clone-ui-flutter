import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'footer.dart';

class WebWidget extends StatelessWidget {
  final Widget widget;
  const WebWidget({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            widget,
            const Footer(),
          ],
        ),
      ),
    );
  }
}
