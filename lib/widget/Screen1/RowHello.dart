// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/images.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Text("Hello, ", style: AppText.Hello),
                Text("Sara Rose", style: AppText.name),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text("How are you feeling today ?", style: AppText.How),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageAndText(imagename: AppImages.love, name: "Love"),
                ImageAndText(imagename: AppImages.cool, name: "Cool"),
                ImageAndText(imagename: AppImages.happy, name: "Happy"),
                ImageAndText(imagename: AppImages.sad, name: "Sad"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageAndText extends StatelessWidget {
  String imagename;
  String name;
  ImageAndText({super.key, required this.imagename, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Image.asset("$imagename"),
          const SizedBox(height: 8),
          Text(name),
        ],
      ),
    );
  }
}
