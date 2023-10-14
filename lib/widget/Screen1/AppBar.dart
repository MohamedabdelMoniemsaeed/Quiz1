import 'package:flutter/material.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/images.dart';
import 'package:badges/badges.dart' as badges;

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(AppImages.logo),
          SizedBox(
            width: 10,
          ),
          Text(
            "Moody",
            style: AppText.titleTheme,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: badges.Badge(
              position: badges.BadgePosition.custom(start: 15, bottom: 10),
              showBadge: true,
              ignorePointer: false,
              badgeContent: Text(''),
              child: Icon(
                Icons.notifications_none,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
