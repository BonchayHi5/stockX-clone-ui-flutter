import 'package:flutter/material.dart';
import 'package:stockx_clone/models/demo_data.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[100],
      alignment: Alignment.center,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              categoriesTitle.length,
              (index) => Row(
                children: [
                  Text(
                    categoriesTitle[index],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
