import 'package:flutter/material.dart';
import 'package:omifit/utils/colors.dart';
import 'package:pull_down_button/pull_down_button.dart';

class AppThemes {
  AppThemes._();
  static final ThemeData darkTheme = ThemeData(
    extensions: const [
      PullDownButtonTheme(
        routeTheme: PullDownMenuRouteTheme(
          width: 200,
          accessibilityWidth: 200,
          shadow: BoxShadow(
            color: Color.fromARGB(12, 0, 0, 0),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ),
        itemTheme: PullDownMenuItemTheme(
            textStyle: TextStyle(color: Colors.white, fontSize: 12)),
      ),
    ],
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      onPrimary: lightBlack,
      onSecondary: lightBlack,
      surface: lightBlack,
    ),
    brightness: Brightness.dark,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryColor,
    ),
    indicatorColor: primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionColor: primaryColor,
      selectionHandleColor: primaryColor,
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: bg,
    fontFamily: 'Urbanist',
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: darkBlack,
      titleTextStyle: TextStyle(
        color: kWhite,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    iconTheme: const IconThemeData(color: kWhite),
    buttonTheme: const ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(primaryColor.withOpacity(0.05)),
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        side: WidgetStateProperty.all(
          const BorderSide(
            color: primaryColor,
          ),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Color(0xFF3C3C3E),
      filled: true,
      hintStyle: TextStyle(
        color: kWhite,
        fontWeight: FontWeight.w600,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
    ),
    datePickerTheme: const DatePickerThemeData(),
  );
}
