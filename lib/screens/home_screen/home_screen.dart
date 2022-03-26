import 'package:flutter/material.dart';
import 'package:stockx_clone/screens/home_screen/widget/home_body.dart';
import 'package:stockx_clone/screens/home_screen/widget/categories_bar.dart';
import 'package:stockx_clone/widgets/web_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebWidget(
      widget: Column(
        children: const [
          CategoriesBar(),
          HomeBody(),
        ],
      ),
    );
  }
}
