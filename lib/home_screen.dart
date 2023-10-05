import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c9/my_theme_data.dart';
import 'package:islami_app_c9/providers/my_provider.dart';
import 'package:islami_app_c9/tabs/ahadeth.dart';
import 'package:islami_app_c9/tabs/quran.dart';
import 'package:islami_app_c9/tabs/radio.dart';
import 'package:islami_app_c9/tabs/sebha.dart';
import 'package:islami_app_c9/tabs/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.theme == ThemeMode.light ?
          'assets/images/background.png' :
          'assets/images/dark_bg.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/quran.png'),
                ),
                label: 'Quran',
                backgroundColor: Theme
                    .of(context)
                    .colorScheme
                    .primary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: 'Ahadeth',
                backgroundColor: Theme
                    .of(context)
                    .colorScheme
                    .primary,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha',
                backgroundColor: Theme
                    .of(context)
                    .colorScheme
                    .primary,
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio',
                  backgroundColor: Theme
                      .of(context)
                      .colorScheme
                      .primary
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Theme
                    .of(context)
                    .colorScheme
                    .primary,
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
