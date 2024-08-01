import 'package:flutter/material.dart';
import 'package:madrastak/utils/color_utility.dart';

class QuestionInForm extends StatelessWidget {
  final String question;
  final String loginAsStudent;
  final String loginAsTeacher;
  final void Function() onPressed;
  final void Function() ontap;
  const QuestionInForm(
      {super.key,
      required this.question,
      required this.loginAsStudent,
      required this.loginAsTeacher,
      required this.onPressed,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: const TextStyle(color: ColorUtility.primary, fontSize: 14),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              loginAsStudent,
              style:
                  const TextStyle(color: ColorUtility.secondary, fontSize: 14),
            )),
        TextButton(
            onPressed: ontap,
            child: Text(
              loginAsTeacher,
              style:
                  const TextStyle(color: ColorUtility.secondary, fontSize: 14),
            )),
      ],
    );
  }
}
