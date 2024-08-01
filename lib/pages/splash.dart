import 'dart:async';
import 'package:flutter/material.dart';
import 'package:madrastak/pages/sign_up_page.dart';
import 'package:madrastak/utils/color_utility.dart';
import 'package:madrastak/utils/images_utility.dart';
import 'package:madrastak/widgets/gradient_containeer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const SignUpPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const GradientContaineer(),
        Center(
          child: Image.asset(
            ImagesUtility.splashImage,
          ),
        ),
        Positioned(
            left: MediaQuery.sizeOf(context).width / 2,
            bottom: MediaQuery.sizeOf(context).height / 7,
            child: const CircularProgressIndicator.adaptive(
              backgroundColor: ColorUtility.primary,
            ))
      ]),
    );
  }
}
