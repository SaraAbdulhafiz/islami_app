import 'package:flutter/material.dart';
import 'package:islami_app_c9/my_theme_data.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("English",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: MyThemeData.primary,
                      )),
              Icon(Icons.done, color: MyThemeData.primary, size: 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Arabic",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: MyThemeData.blackColor,
                      )),
              SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
