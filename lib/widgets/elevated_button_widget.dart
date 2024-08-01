import 'package:flutter/material.dart';
import 'package:madrastak/utils/color_utility.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const ElevatedButtonWidget({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(ColorUtility.primary)),
      onPressed:onPressed,
      child:  Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          text,
          style:
              TextStyle(color: ColorUtility.scaffoldBackground, fontSize: 20),
        ),
      ),
    );
  }
}
