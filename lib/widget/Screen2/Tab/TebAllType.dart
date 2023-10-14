import 'package:flutter/material.dart';
import 'package:quiz1/Theme/images.dart';

class TabAll extends StatelessWidget {
  const TabAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabAds(
            day: "7 days",
            title: "Morning Yoga",
            desTitle: "Improve mental focus.",
            images: AppImages.ads3),
        TabAds(
            day: "3 days",
            title: "Plank Exercise",
            desTitle: "Improve posture and \n stability.",
            images: AppImages.ads2),
      ],
    );
  }
}

class TabAds extends StatelessWidget {
  String day;
  String title;
  String desTitle;
  String images;
  TabAds(
      {required this.day,
      required this.title,
      required this.desTitle,
      required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white70,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(day),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff344054),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  desTitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16, top: 18),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock_clock_outlined,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("30 mins"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(images),
          ),
        ],
      ),
    );
  }
}
