import 'package:flutter/material.dart';
import 'package:quiz1/Theme/images.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logoFlowr),
            SizedBox(width: 5),
            Text(
              "AliceCare",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
        Container(
            width: MediaQuery.of(context).size.width * .8,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search_sharp),
                labelText: 'Articles, Video, Audio and More,...',
              ),
              onSubmitted: (String value) {
                debugPrint(value);
              },
            )),
      ],
    );
  }
}
