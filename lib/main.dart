import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c9/hadeth_details.dart';
import 'package:islami_app_c9/home_screen.dart';
import 'package:islami_app_c9/my_theme_data.dart';
import 'package:islami_app_c9/providers/my_provider.dart';
import 'package:islami_app_c9/providers/sura_details_provider.dart';
import 'package:islami_app_c9/sura_details.dart';
import 'package:islami_app_c9/tabs/radio.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyProvider(),),
        //ChangeNotifierProvider(create: (context) => SuraDetailsProvider(),)
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.loacl),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
        RadioTab.routeName: (context) => RadioTab(),
      },
      themeMode: provider.theme,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
