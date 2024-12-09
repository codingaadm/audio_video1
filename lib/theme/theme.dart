
import 'package:flutter/cupertino.dart';
import 'package:audio_video/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static const horizontalMargin = 16.0;
  static const radius = 10.0;

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    primaryColor: AppColors.primaryElement,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.primaryElement,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: AppColors.primaryElementText,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.primaryElementText,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      toolbarTextStyle: TextStyle(
        color: AppColors.primaryElementText,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryElement,
      unselectedLabelStyle: TextStyle(fontSize: 12),
      selectedLabelStyle: TextStyle(fontSize: 13),
      unselectedItemColor: Color(0xffA2A5B9),
      selectedItemColor: AppColors.primaryBackground,
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: AppColors.primaryBackground,
      unselectedLabelColor: AppColors.primarySecondaryElementText,
    )

  );
}