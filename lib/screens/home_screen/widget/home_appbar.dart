import 'package:flutter/material.dart';
import 'package:stockx_clone/models/demo_data.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      leadingWidth: 150,
      backgroundColor: Colors.white,
      elevation: 0,
      shape: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Image.asset("assets/download.png", width: 100, height: 100),
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
                prefixIcon: Icon(Icons.search, color: Colors.black)),
          ),
        ),
      ),
      actions: [
        Row(
          children: List.generate(
            appBarMenu.length,
            (index) => Row(
              children: [
                Text(
                  appBarMenu[index],
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
