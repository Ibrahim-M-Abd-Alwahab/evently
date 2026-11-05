import 'package:evently/providers/app_language_provider.dart';
import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations localizations = AppLocalizations.of(context)!;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var languageProvider = Provider.of<AppLanguageProvider>(context);
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
              // todo: change language to english
              languageProvider.changeLanguage('en');
            },
            child:
                languageProvider.appLanguage == "en"
                    ? getSelectedLanguageItem(
                      textLanguage: localizations.english,
                    )
                    : getUnSelectedLanguageItem(
                      textLanguage: localizations.english,
                    ),
          ),
          SizedBox(height: height * 0.02),
          InkWell(
            onTap: () {
              // todo: change language to arabic
              languageProvider.changeLanguage('ar');
            },
            child:
                languageProvider.appLanguage == "ar"
                    ? getSelectedLanguageItem(
                      textLanguage: localizations.arabic,
                    )
                    : getUnSelectedLanguageItem(
                      textLanguage: localizations.arabic,
                    ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedLanguageItem({required String textLanguage}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textLanguage, style: AppStyles.bold20Primary),
        Icon(Icons.check, color: AppColor.primaryLight, size: 35),
      ],
    );
  }

  Widget getUnSelectedLanguageItem({required String textLanguage}) {
    return Text(textLanguage, style: AppStyles.bold20Black);
  }
}
