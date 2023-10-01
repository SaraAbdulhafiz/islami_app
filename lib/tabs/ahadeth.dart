import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c9/hadeth_details.dart';
import 'package:islami_app_c9/hadeth_model.dart';
import 'package:islami_app_c9/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 2,
          color: MyThemeData.primary,
        ),
        Text(AppLocalizations.of(context)!.ahadeth),
        Divider(
          thickness: 2,
          color: MyThemeData.primary,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              endIndent: 40,
              indent: 40,
              color: MyThemeData.primary,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetails.routeName,
                    arguments: allAhadeth[index],
                  );
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  loadHadeth() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then(
      (ahadeth) {
        List<String> adhadethList = ahadeth.split("#");
        for (int i = 0; i < adhadethList.length; i++) {
          String hadethOne = adhadethList[i];
          List<String> hadethOneLines = hadethOne.trim().split("\n");
          String title = hadethOneLines[0];
          hadethOneLines.removeAt(0);
          List<String> content = hadethOneLines;
          HadethModel hadethModel = HadethModel(title, content);
          // print(title);
          allAhadeth.add(hadethModel);
          setState(() {});
        }
      },
    ).catchError(
      (e) {
        print(e.toString());
      },
    );
  }
}
