import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c9/hadeth_details.dart';
import 'package:islami_app_c9/home_screen.dart';
import 'package:islami_app_c9/my_theme_data.dart';
import 'package:islami_app_c9/sura_details.dart';
import 'package:islami_app_c9/tabs/radio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
        RadioTab.routeName: (context) => RadioTab(),
      },
      theme: MyThemeData.lightTheme,
      //  darkTheme: MyThemeData.darkTheme,
    );
  }
}
