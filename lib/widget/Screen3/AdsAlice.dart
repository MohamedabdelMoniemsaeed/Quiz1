import 'package:carousel_slider/carousel_slider.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/images.dart';

class AdsTab extends StatelessWidget {
  const AdsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListAds1();
  }
}

class ListAds1 extends StatelessWidget {
  const ListAds1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .1,
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                  background: Container(
                      decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent,
                        spreadRadius: 0.5,
                        blurRadius: 9,
                        offset: Offset(5, -1),
                      ),
                    ],
                  )),
                  position: TabBarPosition.top,
                  alignment: TabBarAlignment.center,
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
                  Container(
                    color: Colors.transparent,
                  ),
                  Container(color: Colors.transparent),
                  Container(color: Colors.transparent),
                  Container(color: Colors.transparent),
                ],
                // onChange: (index) => print(index),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Hot topics",
                    style: AppText.titletab,
                  ),
                  Spacer(),
                  Text("See all >", style: AppText.seemore),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * .2),
              items: [Image.asset(AppImages.a1), Image.asset(AppImages.a2)]
                  .map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: (i));
                  },
                );
              }).toList(),
            )
          ],
        ),
      ],
    );
  }
}
