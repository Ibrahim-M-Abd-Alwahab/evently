import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.whiteBgColor,
    textTheme: TextTheme(headlineLarge: AppStyles.bold20Black),

    // bottomSheetTheme: BottomSheetThemeData(),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.primaryDark,
    textTheme: TextTheme(headlineLarge: AppStyles.bold20White),
  );
}
