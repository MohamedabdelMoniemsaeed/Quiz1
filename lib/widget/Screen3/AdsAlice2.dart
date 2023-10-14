import 'package:flutter/material.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/images.dart';

class AdsTab2 extends StatelessWidget {
  const AdsTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Get Tips",
            style: AppText.titletab,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          color: Colors.white70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(AppImages.doc),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connect with doctors & \n get suggestions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(height: 7),
                  Text("Connect now and get\n expert insights "),
                  MaterialButton(
                    color: Color(0xff7F56D9),
                    onPressed: () {},
                    child: Text(
                      "View detail",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Text(
                "Cycle Phases and Period",
                style: AppText.titletab,
              ),
              Spacer(),
              Text("See all >", style: AppText.seemore),
            ],
          ),
        ),
      ],
    );
  }
}
