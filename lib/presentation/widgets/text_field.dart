import 'package:flutter/material.dart';

import '../../colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      required this.iconName,
      required this.controller,
      this.obscureText = false,
      this.validator,
      this.keyboardType,
      this.inputFormatters});

  final String hint;
  final IconData iconName;
  final TextEditingController controller;
  final bool obscureText;
  final dynamic validator;
  final TextInputType? keyboardType;
  final dynamic inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black), // Adjust the text color
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: Icon(
          iconName,
          color: kGrayC, // Adjust the icon color
          size: 18,
        ),
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 16, color: kGrayC),
        filled: true,
        fillColor: kTextFieldColor, // Adjust the background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), // Adjust the border radius
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:
              const BorderSide(color: kGrayC), // Adjust the border color
        ),
      ),
    );
  }
}
