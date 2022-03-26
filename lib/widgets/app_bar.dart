import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockx_clone/models/demo_data.dart';
import 'package:stockx_clone/screens/auth_screen/auth_screen.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return width > 800
        ? AppBar(
            toolbarHeight: 90,
            leadingWidth: 150,
            backgroundColor: Colors.white,
            elevation: 0,
            shape:
                Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child:
                  Image.asset("assets/download.png", width: 100, height: 100),
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
                          borderSide:
                              BorderSide(width: 1, color: Colors.black)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
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
              GestureDetector(
                onTap: () => Get.to(
                  () => const AuthScreen(),
                  transition: Transition.fadeIn,
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 23),
                  width: 95,
                  color: Colors.black87,
                  child: const Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 16),
                  )),
                ),
              ),
              const SizedBox(width: 50),
            ],
          )
        : AppBar(
            title: Image.asset("assets/download.png", width: 100, height: 100),
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
          );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
