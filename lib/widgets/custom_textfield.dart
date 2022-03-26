import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? hintText;
  final GlobalKey<FormState>? textFieldKey;
  final TextStyle? hintTextStyle;
  final bool? obsureText;
  final bool? autoFocus;
  final bool? enabled;
  final FocusNode? focusNode;
  final int? maxLength;
  final int maxLine;
  final Widget? suffixIcon;
  final Widget? prefix;
  // final double pTop;
  // final double pBottom;
  final double pVertical;
  final double pHorizontal;
  final double contentPadTop;
  final double contentPadLeft;
  final double contentPadRight;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  const CustomTextField({
    Key? key,
    this.hintText,
    this.textFieldKey,
    this.hintTextStyle,
    this.obsureText,
    this.autoFocus,
    this.enabled,
    this.focusNode,
    this.maxLength,
    this.maxLine = 1,
    this.suffixIcon,
    this.prefix,
    this.validator,
    // required this.pTop,
    // required this.pBottom,
    this.pVertical = 4,
    this.pHorizontal = 15,
    this.contentPadTop = 8,
    this.contentPadLeft = 16.0,
    this.contentPadRight = 16.0,
    this.keyboardType,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      // height: 70,
      child: TextFormField(
        key: widget.textFieldKey,
        maxLines: widget.maxLine,
        maxLength: widget.maxLength,
        enabled: widget.enabled,
        keyboardType: widget.keyboardType,
        focusNode: widget.focusNode,
        controller: widget.controller,
        autofocus: widget.autoFocus ?? false,
        cursorColor: Colors.black,
        style: const TextStyle(
            fontFamily: 'Kufam', fontSize: 14, color: Colors.black),
        obscureText: widget.obsureText ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
              left: widget.contentPadLeft,
              right: widget.contentPadRight,
              top: widget.contentPadTop),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontSize: 14),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          errorStyle: const TextStyle(fontFamily: 'Kufam', fontSize: 12),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.5, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffixIcon,
        ),
        validator: widget.validator,
        onChanged: widget.onChanged,
      ),
    );
  }
}
