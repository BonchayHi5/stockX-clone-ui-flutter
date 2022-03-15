import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:stockx_clone/models/demo_data.dart';
import 'package:stockx_clone/widgets/product_section.dart';
import 'package:stockx_clone/widgets/web_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        leadingWidth: 150,
        backgroundColor: Colors.white,
        elevation: 0,
        shape: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset(
            "assets/download.png",
            width: 100,
            height: 100,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 32.0),
          child: SizedBox(
            height: 45,
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  hintText: "Search for brand,color,etc",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1, color: Colors.black38),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Browse',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                const SizedBox(width: 24),
                const Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                const SizedBox(width: 24),
                const Text(
                  'About',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                const SizedBox(width: 24),
                const Text(
                  'Help',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                const SizedBox(width: 24),
                const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                const SizedBox(width: 24),
                SizedBox(
                  height: 45,
                  width: 110,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ))),
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(color: Colors.black)))),
                    onPressed: () {},
                    child: const Text(
                      'Sell',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Sneakers',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(width: 32),
                Text(
                  'Apparel',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(width: 32),
                Text(
                  'Electronics',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(width: 32),
                Text(
                  'Trading Cards',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(width: 32),
                Text(
                  'Collectibles',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(width: 32),
                Text(
                  'Accessories',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(width: 32),
                Text(
                  'NFTs',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          WebLayout(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 28.0),
                  child: CachedNetworkImage(
                    height: 410,
                    width: 1300,
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/bltefe96f4f277a4afb/6227b6a5252d0914d3acb5b0/Primary_Desktop.png?format=jpg&auto=webp&height=450",
                  ),
                ),
                const Text(
                  "Popular Brands",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0, bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      categories.length,
                      (index) => CachedNetworkImage(
                        height: 160,
                        width: 240,
                        fit: BoxFit.cover,
                        imageUrl: categories[index],
                      ),
                    ),
                  ),
                ),
                ProductSection(
                    title: "Most Popular Sneakers", data: popularBrand),
                ProductSection(
                    title: "Trending Apparel", data: trendingApparel),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: CachedNetworkImage(
                        height: 410,
                        width: 1300 * 0.66,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/bltd0e652f0b56d5516/622b8724429f83163fd9177e/final_DropX-Exclusive-_Loso_Capsule_CollectionSecondaryA.jpg?format=jpg&auto=webp&height=438",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: CachedNetworkImage(
                        height: 410,
                        width: 1300 * 0.32,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/bltdeba8ef8cd9caf6c/622bbbf87953ce14e5f32390/Pickoftheweek-3-10-22-banners-SecondaryB.png?format=jpg&auto=webp&height=438",
                      ),
                    ),
                  ],
                ),
                ProductSection(title: "Hot Electronics", data: hotElectronic),
                ProductSection(
                    title: "Trending Apparel", data: trendingApparel),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: CachedNetworkImage(
                        height: 410,
                        width: 1300 * 0.32,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/blt2ce7f54545d6087a/622bcd02587412163837ed41/Valve_Steam_Deck_-_SecondaryB_(1).jpg?format=jpg&auto=webp&height=438",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28.0),
                      child: CachedNetworkImage(
                        height: 410,
                        width: 1300 * 0.66,
                        fit: BoxFit.cover,
                        imageUrl:
                            "https://images.contentstack.io/v3/assets/blt818b0c67cf450811/blt60c482fb5ccbec7d/622bcc54c5e4be4bd2b4c47f/2022-3-9-XboxMiniFridge-SecondaryA.png?format=jpg&auto=webp&height=438",
                      ),
                    ),
                  ],
                ),
                ProductSection(title: "Hot Electronics", data: hotElectronic),
                ProductSection(
                    title: "Trending Apparel", data: trendingApparel),
                ProductSection(title: "Hot Electronics", data: hotElectronic),
                ProductSection(
                    title: "Trending Apparel", data: trendingApparel),
              ],
            ),
          )),
          Container(
            height: 390,
            color: Colors.black87,
            child: WebLayout(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    child: Text(
                      "StockX. Access the Now.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) => SizedBox(
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Air Jordan",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Air Jordan 1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "Jordan Golf Shoes",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "Air Jordan 3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "Air Jordan 11",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "Air Jordan 4",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "Jordan 1 Mid",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    height: 2,
                    color: Colors.grey[300],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2)),
                        width: 200,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 24.0),
                        child: const Center(
                          child: Text(
                            "Cambodia | English | \$ USD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Find Us on Social",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    Ionicons.logo_twitter,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Ionicons.logo_facebook,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Ionicons.logo_instagram,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Ionicons.logo_youtube,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Download Our App",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Ionicons.logo_apple,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Ionicons.logo_android,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Use Assistive Technology",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14)),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Icon(
                                    Ionicons.logo_apple,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Icon(
                                    Ionicons.logo_android,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 24.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Ionicons.logo_octocat,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Proudly Built in Detroit",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: WebLayout(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 24),
                      Text(
                        "HELP | HOW IT WORKS | PRIVACY | TERMS | JOBS| CONTACT | PRODUCT | SUGGESTION | PRESS | ACCESSIBILITY | STATEMENT",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "EN EN-GB IT DE FR FR-CA ZH-CN ZH-TW JA KO ES-MX ES-US ES-ES",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 24),
                    ],
                  ),
                  const Text(
                    "StockX UI clone is for learning purpose",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
