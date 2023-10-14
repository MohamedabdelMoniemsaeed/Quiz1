// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/coloes.dart';
import 'package:quiz1/Theme/images.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:
              EdgeInsets.only(top: 24, left: 10, right: 10, bottom: 16),
          child: Row(
            children: [
              Text(
                "Exercise",
                style: AppText.titletab,
              ),
              Spacer(),
              Text(
                "See more >",
                style: AppText.seemore,
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
                child: ExeButton(
                    colors: const Color(0xffF9F5FF),
                    image: AppImages.relaxation,
                    name: "Relaxation")),
            Expanded(
                child: ExeButton(
                    colors: const Color(0xffFDF2FA),
                    image: AppImages.meditation,
                    name: "Meditation")),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: ExeButton(
                    colors: const Color(0xffFFFAF5),
                    image: AppImages.beathing,
                    name: "Beathing")),
            Expanded(
                child: ExeButton(
                    colors: const Color(0xffF0F9FF),
                    image: AppImages.yoga,
                    name: "Yoga")),
          ],
        ),
      ],
    );
  }
}

class ExeButton extends StatelessWidget {
  String name;
  String image;
  Color colors;
  ExeButton({super.key, required this.image, required this.name, required this.colors});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              colors,
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
              ),
              const SizedBox(width: 12),
              Text(
                name,
                style: const TextStyle(color: AppColors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
