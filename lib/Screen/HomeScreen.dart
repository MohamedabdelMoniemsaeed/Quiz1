import 'package:flutter/material.dart';
import 'package:quiz1/Screen/Screen1.dart';
import 'package:quiz1/Screen/Screen2.dart';
import 'package:quiz1/Screen/Screen3.dart';
import 'package:quiz1/Theme/coloes.dart';

class HomeScreen extends StatefulWidget {
  static const String rouatName = "Home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cindex = 0;
  List<Widget> tabs = [
    Screen1(),
    Screen3(),
    Screen2(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: tabs.elementAt(cindex),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() => BottomNavigationBar(
        selectedItemColor: AppColors.green,
        currentIndex: cindex,
        onTap: (index) {
          setState(() {
            cindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.border_all_sharp), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      );
}
