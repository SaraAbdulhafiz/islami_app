import 'package:flutter/material.dart';
import 'package:islami_app_c9/my_theme_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: MyThemeData.primary,
                        )),
                provider.loacl == "en"
                    ? Icon(Icons.done,
                        color: provider.loacl == "en"
                            ? MyThemeData.primary
                            : MyThemeData.blackColor,
                        size: 30)
                    : SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.loacl == "ar"
                              ? MyThemeData.blackColor
                              : MyThemeData.blackColor,
                        )),
                provider.loacl == "ar"
                    ? Icon(Icons.done,
                        color: provider.loacl == "en"
                            ? MyThemeData.primary
                            : MyThemeData.blackColor,
                        size: 30)
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
