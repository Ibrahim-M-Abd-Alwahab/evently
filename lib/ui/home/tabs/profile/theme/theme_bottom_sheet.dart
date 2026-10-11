import 'package:evently/providers/app_theme_provider.dart';
import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var appThemeProvider = Provider.of<AppThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              appThemeProvider.changeThemeMode(ThemeMode.light);
            },
            child:
                // if Light
                (!appThemeProvider.isDarkMode())
                    ? getSelectedThemeModeItem(
                      textLanguage: localizations.light,
                    )
                    : getUnSelectedThemeModeItem(
                      textLanguage: localizations.light,
                    ),
          ),

          SizedBox(height: height * 0.02),
          InkWell(
            onTap: () {
              appThemeProvider.changeThemeMode(ThemeMode.dark);
            },
            child:
                // if Dark
                appThemeProvider.isDarkMode()
                    ? getSelectedThemeModeItem(textLanguage: localizations.dark)
                    : getUnSelectedThemeModeItem(
                      textLanguage: localizations.dark,
                    ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedThemeModeItem({required String textLanguage}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textLanguage, style: AppStyles.bold20Primary),
        Icon(Icons.check, color: AppColor.primaryLight, size: 35),
      ],
    );
  }

  Widget getUnSelectedThemeModeItem({required String textLanguage}) {
    return Text(textLanguage, style: AppStyles.bold20Black);
  }
}
