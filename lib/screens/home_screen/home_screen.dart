import 'package:flutter/material.dart';
import 'package:stockx_clone/screens/home_screen/widget/home_appbar.dart';
import 'package:stockx_clone/screens/home_screen/widget/home_body.dart';
import 'package:stockx_clone/screens/home_screen/widget/home_footer.dart';
import 'package:stockx_clone/widgets/categories_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeAppBar(),
      body: ListView(
        children: const [
          CategoriesBar(),
          HomeBody(),
          HomeFooter(),
        ],
      ),
    );
  }
}
