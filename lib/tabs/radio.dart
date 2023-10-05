import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = 'radio';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.play_arrow,
                  size: 60,
                ),
                Icon(
                  Icons.play_circle,
                  size: 60,
                ),
                Icon(
                  Icons.play_arrow,
                  size: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
