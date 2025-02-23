import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_styles.dart';
import 'package:flutter/material.dart';
class AppTheme
{
  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.mainLightColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.secondaryColor),
        shape: WidgetStatePropertyAll(BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5),

        ))
      )
    ),
    primaryColor: AppColors.mainLightColor,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: AppColors.greyColor)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.greyColor)
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.greyColor)
      ),
      suffixIconColor: AppColors.greyColor,
      prefixIconColor: AppColors.greyColor,
      hintStyle: AppStyles.greyNormal16
    ),
    textTheme: const TextTheme(
      titleMedium: AppStyles.whiteBold16,
      bodyMedium: AppStyles.whiteNormal16,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.secondaryColor,
      titleTextStyle: AppStyles.whiteBold16
    )
  );
  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.mainDarkColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(AppColors.secondaryColor),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )
              //     BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5),
              //
              // )
              )
          )
      ),
      primaryColor: AppColors.mainDarkColor,
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.secondaryColor)
          ),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.secondaryColor)
          ),
          enabledBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.secondaryColor)
          ),
          suffixIconColor: AppColors.whiteColor,
          prefixIconColor: AppColors.whiteColor,
          hintStyle: AppStyles.whiteBold16
      ),
      textTheme: const TextTheme(
        titleMedium: AppStyles.whiteBold16,
        bodyMedium: AppStyles.whiteNormal16,
      ),
      appBarTheme: AppBarTheme(
          color: AppColors.mainDarkColor,
          titleTextStyle: AppStyles.whiteBold16
      )

  );
}