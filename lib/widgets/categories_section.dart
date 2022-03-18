import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stockx_clone/models/demo_data.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular Brands",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 24),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                categories.length,
                (index) => Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.014),
                  child: CachedNetworkImage(
                    height: 160,
                    width: 240,
                    fit: BoxFit.cover,
                    imageUrl: categories[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
