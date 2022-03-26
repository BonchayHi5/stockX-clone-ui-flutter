import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String btnText;
  final void Function() onTap;

  const CustomBtn({
    Key? key,
    required this.btnText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Center(
            child: Text(
          btnText,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
