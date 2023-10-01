import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/sebha_bg.png"),
          SizedBox(
            height: 8,
          ),
          Text("عدد التسبيحات"),
        ],
      ),
    );
  }
}
