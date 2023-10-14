import 'package:flutter/material.dart';
import 'package:quiz1/Screen/HomeScreen.dart';
import 'package:quiz1/Screen/Screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.rouatName: (context) => HomeScreen(),
        Screen1.rouatName: (context) => Screen1(),
      },
      initialRoute: HomeScreen.rouatName,
    );
  }
}
