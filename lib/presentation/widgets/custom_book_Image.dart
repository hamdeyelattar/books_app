import 'package:flutter/material.dart';

import '../../core/utilis/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.5 / 4,
      child: Container(
        height: 220,
        // width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsLogo.testImage,
              ),
            )),
      ),
    );
  }
}
