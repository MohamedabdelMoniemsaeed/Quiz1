import 'package:flutter/material.dart';
import 'package:quiz1/widget/Screen3/AdsAlice.dart';
import 'package:quiz1/widget/Screen3/AdsAlice2.dart';
import 'package:quiz1/widget/Screen3/titletab.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RowTitle(),
        AdsTab(),
        AdsTab2(),
      ],
    );
  }
}
