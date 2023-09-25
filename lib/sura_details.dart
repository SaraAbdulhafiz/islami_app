import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c9/my_theme_data.dart';
import 'package:islami_app_c9/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraDetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: Card(
          elevation: 14,
          margin: EdgeInsets.all(18),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(
                color: MyThemeData.primary,
              )),
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
                  "${verses[index]} (${index + 1})",
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = sura.split('\n');
    print(lines);
    verses = lines;
    setState(() {});
  }
}
