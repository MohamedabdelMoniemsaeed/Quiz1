import 'package:flutter/material.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/coloes.dart';
import 'package:quiz1/Theme/images.dart';
import 'package:badges/badges.dart' as badges;

class RowAppBar2 extends StatelessWidget {
  const RowAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(AppImages.sara),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, Sara",
                    style: AppText.Hello,
                  ),
                  Text("Ready to workout?"),
                ],
              ),
              const Spacer(),
              badges.Badge(
                position: badges.BadgePosition.custom(start: 15, bottom: 10),
                showBadge: true,
                ignorePointer: false,
                badgeContent: const Text(''),
                child: const Icon(
                  Icons.notifications_none,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ViewList(
                icons: Icons.favorite_border,
                name1: "Heart Rate",
                name2: "81",
                name3: "BPM"),
            Container(
              width: 10,
              height: 40,
              child: const VerticalDivider(
                color: Color.fromARGB(68, 0, 0, 0),
                thickness: 1,
                width: 20,
              ),
            ),
            ViewList(
                icons: Icons.menu, name1: "To-do", name2: "32,5", name3: "%"),
            Container(
              width: 10,
              height: 40,
              child: const VerticalDivider(
                color: Color.fromARGB(68, 0, 0, 0),
                thickness: 1,
                width: 20,
              ),
            ),
            ViewList(
                icons: Icons.fireplace_rounded,
                name1: "Calo",
                name2: "1000",
                name3: "Cal"),
          ],
        ),
      ],
    );
  }
}

class ViewList extends StatelessWidget {
  IconData icons;
  String name1;
  String name2;
  String name3;
  ViewList(
      {required this.name1,
      required this.name2,
      required this.icons,
      required this.name3});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icons,
              color: const Color(0xff717BBC),
            ),
            Text(name1),
          ],
        ),
        Row(children: [
          Text(
            name2,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text(name3),
        ]),
      ],
    );
  }
}
