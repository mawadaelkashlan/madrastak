import 'package:flutter/material.dart';
import 'package:madrastak/utils/color_utility.dart';

class DefaultFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final Widget? suffix;
  final bool obscureText;
  final String Function(String?)? validator;

  final TextInputType? textInputType;
  const DefaultFormField(
      {super.key,
      required this.labelText,
      required this.controller,
      this.suffix,
      this.obscureText = false,
      this.textInputType,
      this.validator});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorUtility.grey, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          validator: validator,
          keyboardType: textInputType,
          obscureText: obscureText,
          controller: controller,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            suffix: suffix,
            border: InputBorder.none,
            labelText: labelText,
            hintTextDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}
