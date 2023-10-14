import 'package:flutter/material.dart';
import 'package:quiz1/widget/Screen1/Ads.dart';
import 'package:quiz1/widget/Screen1/AppBar.dart';
import 'package:quiz1/widget/Screen1/Exercise.dart';
import 'package:quiz1/widget/Screen1/RowHello.dart';

class Screen1 extends StatefulWidget {
  static const String rouatName = "Sceeen1";
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _ScreenState();
}

class _ScreenState extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          SizedBox(height: 20),
          AppBarTitle(),
          Hello(),
          Ads(),
          Exercise(),
        ],
      ),
    );
  }
}
