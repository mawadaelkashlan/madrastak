import 'package:flutter/material.dart';
import 'package:madrastak/utils/images_utility.dart';

class SocialRow extends StatelessWidget {
  final void Function() facebookClicked;
  final void Function() googleClicked;
  final void Function() appleClicked;
  const SocialRow({super.key, required this.facebookClicked, required this.googleClicked, required this.appleClicked});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: appleClicked, icon: Image.asset(ImagesUtility.apple)),
        IconButton(onPressed: googleClicked, icon: Image.asset(ImagesUtility.google)),
        IconButton(onPressed: facebookClicked, icon: Image.asset(ImagesUtility.facebook)),
      ],
    );
  }
}
