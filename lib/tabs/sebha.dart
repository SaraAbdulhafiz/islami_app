import 'package:flutter/material.dart';
import 'package:islami_app_c9/my_theme_data.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkarList = [
    'سبحان الله',
    'الحمدلله',
    ' الله اكبر',
    'لا اله الا الله'
  ];
  int tasbeehCounter = 1;
  int azkarCounter = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              tasbeehLogic();
            },
            child: Transform.rotate(
                angle: angle, child: Image.asset("assets/images/sebha_bg.png")),
          ),
          SizedBox(
            height: 8,
          ),
          Text("Tasbeeh Number"),
          Container(
            child: Text(tasbeehCounter.toString()),
            margin: EdgeInsets.all(18),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: MyThemeData.primary,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
              padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
              backgroundColor: MaterialStatePropertyAll(MyThemeData.primary),
            ),
            onPressed: () {
              tasbeehLogic();
            },
            child: Text(azkarList[azkarCounter]),
          ),
        ],
      ),
    );
  }

  tasbeehLogic() {
    if (tasbeehCounter == 33) {
      tasbeehCounter = 1;
      if (azkarCounter == 33) {
        azkarCounter = 0;
      } else {
        azkarCounter++;
      }
    } else {
      tasbeehCounter++;
    }
    angle = 6;
    setState(() {});
  }
}
