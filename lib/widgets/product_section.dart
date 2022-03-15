import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<Map> data;

  const ProductSection({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 4),
                  const Icon(Icons.help, size: 20)
                ],
              ),
              Row(
                children: [
                  Text("See All ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900])),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.green[900],
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 24),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                data.length,
                (index) => Container(
                  height: 250,
                  width: 195,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!)),
                  child: Column(children: [
                    SizedBox(
                      height: 118,
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(
                          child: CachedNetworkImage(
                            width: 130,
                            imageUrl: data[index]['img'],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          data[index]["name"].length < 60
                              ? Text(
                                  data[index]["name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                )
                              : Text(
                                  data[index]["name"].substring(0, 47) + "...",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Lowest Ask",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[500]!,
                                  fontSize: 12),
                            ),
                          ),
                          Text(
                            "\$${data[index]["price"]}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            height: 30,
                            width: 90,
                            color: Colors.grey[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.green[900],
                                      shape: BoxShape.circle),
                                ),
                                Text(
                                  " " + data[index]["sold"] + " Sold",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
