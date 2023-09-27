import 'package:flutter/material.dart';
import 'package:islami_app_c9/hadeth_model.dart';

import 'my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadeth details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: Card(
          elevation: 14,
          margin: EdgeInsets.all(18),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: MyThemeData.primary,
              )),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                indent: 40,
                endIndent: 40,
                color: MyThemeData.primary,
              ),
              itemBuilder: (context, index) {
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "${args.content[index]}",
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
