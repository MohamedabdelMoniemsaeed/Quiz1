import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/Theme/Text.dart';
import 'package:quiz1/Theme/images.dart';

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 16),
            child: Row(
              children: [
                Text(
                  "Feature",
                  style: AppText.titletab,
                ),
                Spacer(),
                Text(
                  "See more >",
                  style: AppText.seemore,
                ),
              ],
            )),
        ListAds(),
      ],
    );
  }
}

class ListAds extends StatelessWidget {
  const ListAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options:
              CarouselOptions(height: MediaQuery.of(context).size.height * .2),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Color(0xffECFDF3)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Positive vibes',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff344054),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Boost your mood with",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "positive vibes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 16, top: 18),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.play_circle_fill,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text("10 mins"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Image.asset(AppImages.ads1),
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
