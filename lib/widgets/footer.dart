import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'web_layout.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 390,
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
                    (index) => Flexible(
                      child: SizedBox(
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
                              color: Colors.white, fontWeight: FontWeight.bold),
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14)),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
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
                  children: [
                    const SizedBox(height: 24),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: const Text(
                        "HELP | HOW IT WORKS | PRIVACY | TERMS | JOBS| CONTACT | PRODUCT | SUGGESTION | PRESS | ACCESSIBILITY | STATEMENT",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "EN EN-GB IT DE FR FR-CA ZH-CN ZH-TW JA KO ES-MX ES-US ES-ES",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
                const Text(
                  "StockX UI clone is for learning purpose",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
