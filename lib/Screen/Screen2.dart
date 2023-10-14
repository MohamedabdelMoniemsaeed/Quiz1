import 'package:flutter/material.dart';
import 'package:quiz1/widget/Screen2/RowAppbar.dart';
import 'package:quiz1/widget/Screen2/Workout.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 20),
        RowAppBar2(),
        Ads2(),
      ]),
    );
  }
}
