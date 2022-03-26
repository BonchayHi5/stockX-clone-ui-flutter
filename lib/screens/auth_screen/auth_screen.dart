import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stockx_clone/screens/home_screen/home_screen.dart';
import 'package:stockx_clone/widgets/custom_btn.dart';
import 'package:stockx_clone/widgets/custom_textfield.dart';
import 'package:stockx_clone/widgets/web_layout.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 90,
        shape: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1)),
        leading: Container(),
        title: GestureDetector(
          onTap: () {
            Get.to(() => const HomeScreen());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image.asset("assets/download.png", width: 200, height: 200),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: WebLayout(
          child: SizedBox(
            width: 395,
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 2.0, color: Colors.black),
                                ),
                              ),
                              child: const Center(
                                  child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              )),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 2.0, color: Colors.grey),
                                ),
                              ),
                              child: const Center(
                                  child: Text(
                                "Log In",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                    fontSize: 14),
                              )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      socialBtn("Continue with Google"),
                      socialBtn("Continue with Facebook"),
                      socialBtn("Continue with Apple"),
                      socialBtn("Continue with Twitter"),
                      row(),
                      const CustomTextField(hintText: "First Name"),
                      const CustomTextField(hintText: "Last Name"),
                      const CustomTextField(hintText: "Email Address"),
                      const CustomTextField(hintText: "Password"),
                      const Text(
                        "At least 8 characters, 1 uppercase letter, 1 number & 1 symbol",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 24,
                              width: 24,
                              child: Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              "At least 8 characters, 1 uppercase letter, 1 number & 1 symbol",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: CustomBtn(btnText: "Sign Up", onTap: () {}),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.075),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget row() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              height: 1,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            child: const Text("OR"),
          ),
          Expanded(
            child: Container(
              color: Colors.grey,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget socialBtn(String btnTitle) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          btnTitle,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
