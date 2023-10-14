import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/widget/Screen2/Tab/TebAllType.dart';

class Ads2 extends StatelessWidget {
  const Ads2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 24),
          child: Text(
            "Workout Programs",
            style: AppText.titletab,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ContainedTabBarView(
            tabBarProperties: TabBarProperties(
              position: TabBarPosition.top,
              alignment: TabBarAlignment.start,
              indicatorColor: Color(0xff363F72),
              labelColor: Color(0xff363F72),
              unselectedLabelColor: Colors.white,
            ),

            tabs: [
              Text(
                'All Type',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Full Body',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Upper',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Lower',
                style: TextStyle(color: Colors.black),
              ),
            ],
            views: [
              Container(child: TabAll()),
              Container(color: Colors.black),
              Container(color: Colors.red),
              Container(color: Colors.green),
            ],
            // onChange: (index) => print(index),
          ),
        ),
      ],
    );
  }
}
