import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primaryLight,
    scaffoldBackgroundColor: AppColor.whiteBgColor,
    textTheme: TextTheme(headlineLarge: AppStyles.bold20Black),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.transparentColor,
      // backgroundColor: AppColor.primaryLight,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: AppColor.whiteColor,
      unselectedItemColor: AppColor.whiteColor,
      showSelectedLabels: true,
      selectedLabelStyle: AppStyles.bold12White,
      unselectedLabelStyle: AppStyles.bold12White,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryLight,
      shape: StadiumBorder(
        side: BorderSide(color: AppColor.whiteColor, width: 4),
        // RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(30),
        //   side: BorderSide(color: AppColor.whiteColor, width: 4),
        // ),
        // CircleAvatar()
      ),
    ),
    // bottomSheetTheme: BottomSheetThemeData(),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.primaryDark,
    scaffoldBackgroundColor: AppColor.primaryDark,
    textTheme: TextTheme(headlineLarge: AppStyles.bold20White),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.transparentColor,
      // backgroundColor: AppColor.primaryDark,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: AppColor.whiteColor,
      unselectedItemColor: AppColor.whiteColor,
      showSelectedLabels: true,
      selectedLabelStyle: AppStyles.bold12White,
      unselectedLabelStyle: AppStyles.bold12White,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColor.primaryDark,
      // there is three way to control with shape StadiumBorder, RoundedRectangleBorder, CircleAvatar
      shape: StadiumBorder(
        side: BorderSide(color: AppColor.whiteColor, width: 4),
        // RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(30),
        //   side: BorderSide(color: AppColor.whiteColor, width: 4),
        // ),
        // CircleAvatar()
      ),
    ),
  );
}
