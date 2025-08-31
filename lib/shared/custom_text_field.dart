import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textInputType,
    required this.isSecure,
  });

  final String hintText;
  final TextInputType textInputType;
  final bool isSecure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: isSecure,
      decoration: InputDecoration(
        hintText: hintText,
        // To delete borders
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        // fillColor: Colors.red,
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
    );
  }
}
