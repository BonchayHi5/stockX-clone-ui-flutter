import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:stockx_clone/models/demo_data.dart';
import 'package:stockx_clone/widgets/product_section.dart';
import 'package:stockx_clone/widgets/web_layout.dart';

import '../../../widgets/categories_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebLayout(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl:
                "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/bltefe96f4f277a4afb/6227b6a5252d0914d3acb5b0/Primary_Desktop.png?format=jpg&auto=webp&height=450",
          ),
        ),
        ProductSection(title: "Recently Viewed", data: recentlyView),
        const CategoriesSection(),
        ProductSection(title: "Most Popular Sneakers", data: popularBrand),
        ProductSection(title: "Trending Apparel", data: trendingApparel),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/bltd0e652f0b56d5516/622b8724429f83163fd9177e/final_DropX-Exclusive-_Loso_Capsule_CollectionSecondaryA.jpg?format=jpg&auto=webp&height=438",
                ),
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/bltdeba8ef8cd9caf6c/622bbbf87953ce14e5f32390/Pickoftheweek-3-10-22-banners-SecondaryB.png?format=jpg&auto=webp&height=438",
                ),
              ],
            ),
          ),
        ),
        ProductSection(title: "Hot Electronics", data: hotElectronic),
        ProductSection(title: "Trending Apparel", data: trendingApparel),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/blt2ce7f54545d6087a/622bcd02587412163837ed41/Valve_Steam_Deck_-_SecondaryB_(1).jpg?format=jpg&auto=webp&height=438",
                ),
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/blt60c482fb5ccbec7d/622bcc54c5e4be4bd2b4c47f/2022-3-9-XboxMiniFridge-SecondaryA.png?format=jpg&auto=webp&height=438",
                ),
              ],
            ),
          ),
        ),
        ProductSection(title: "Hot Electronics", data: hotElectronic),
        ProductSection(title: "Trending Apparel", data: trendingApparel),
        ProductSection(title: "Hot Electronics", data: hotElectronic),
        ProductSection(title: "Trending Apparel", data: trendingApparel),
      ],
    ));
  }
}
