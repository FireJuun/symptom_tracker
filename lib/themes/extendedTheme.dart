import 'package:flutter/material.dart';

class ExtendedAppTheme {
  ExtendedAppTheme._();

  static ThemeData appTheme = ThemeData.light().copyWith(
    // Added in Flutter 1.17
    visualDensity: VisualDensity.adaptivePlatformDensity,

    // Set default colors
    primaryColor: _AppColors.primary,
    accentColor: _AppColors.secondary,
    disabledColor: _AppColors.disabled,
    errorColor: _AppColors.error,

    // Customize Themes
    appBarTheme: _buildAppBarTheme(_buildTextTheme),
    iconTheme: _buildIconTheme(),
    primaryIconTheme: _buildIconTheme().copyWith(color: _AppColors.primary),

    // Misc
    buttonTheme: ButtonThemeData(
      buttonColor: _AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    unselectedWidgetColor: _AppColors.disabledWidget,
    textTheme: _buildTextTheme.apply(
      displayColor: _AppColors.primary,
      bodyColor: _AppColors.primary,
    ),
  );

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _LightColor.lightOnPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _LightColor.lightPrimaryVariantColor,
      iconTheme: IconThemeData(color: _LightColor.lightOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _LightColor.lightPrimaryColor,
      primaryVariant: _LightColor.lightPrimaryColor,
      secondary: _LightColor.lightSecondaryColor,
      onPrimary: _LightColor.lightOnPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: _LightColor.iconColor,
    ),
    textTheme: _lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _DarkColor.darkPrimaryVariantColor,
    appBarTheme: AppBarTheme(
      color: _DarkColor.darkPrimaryVariantColor,
      iconTheme: IconThemeData(color: _DarkColor.darkOnPrimaryColor),
    ),
    colorScheme: ColorScheme.light(
      primary: _DarkColor.darkPrimaryColor,
      primaryVariant: _DarkColor.darkPrimaryVariantColor,
      secondary: _DarkColor.darkSecondaryColor,
      onPrimary: _DarkColor.darkOnPrimaryColor,
    ),
    iconTheme: IconThemeData(
      color: _DarkColor.iconColor,
    ),
    textTheme: _darkTextTheme,
  );
}

/// ******* Colors *******
class _AppColors {
  // Core
  // static const Color primary = Colors.green;
  static const Color primary = Color(0xFF042240);
  static const Color secondary = Color(0xFF018786);
  static Color error = Colors.red;
  static Color disabled = Colors.grey[500];
  static Color disabledWidget = Colors.grey[300];
}

class _DarkColor {
  static Color iconColor = Colors.blueAccent.shade200;
  static Color darkPrimaryColor = Colors.white24;
  static Color darkPrimaryVariantColor = Colors.black;
  static Color darkSecondaryColor = Colors.white;
  static Color darkOnPrimaryColor = Colors.white;
}

class _LightColor {
  static Color iconColor = Colors.blueAccent.shade200;
  static Color lightPrimaryColor = Colors.red;
  static Color lightPrimaryVariantColor = Colors.pink;
  static Color lightSecondaryColor = Colors.green;
  static Color lightOnPrimaryColor = Colors.blue;
}

/// ******* Custom Themes *******
AppBarTheme _buildAppBarTheme(TextTheme textTheme) {
  return AppBarTheme(
    textTheme: textTheme.apply(displayColor: _AppColors.primary),
  );
}

IconThemeData _buildIconTheme() {
  return const IconThemeData(color: _AppColors.primary, size: 32);
}

/// ******* Text Theme *******
TextTheme _buildTextTheme = TextTheme(
  // Using default Material theme system
  // spec: https://material.io/design/typography/the-type-system.html#type-scale
  // on next stable release of Dart, display4 will be renamed to headline 1,
  // display 3 -> headline2, display2 -> headline3, etc.

  headline1: _AppTypography.h1,
  headline2: _AppTypography.h2,
  // Dashboard: Good day // Home: Hello world
  headline3: _AppTypography.h3,
  // CheckIn: Please select symptoms
  headline4: _AppTypography.h4,
  // CheckIn: Yesterday, you had..
  headline5: _AppTypography.h5,
  // AppBar
  headline6: _AppTypography.h6,
  // ListTitle override 1
  subtitle1: _AppTypography.subtitle1,
  // ListTitle override 2
  subtitle2: _AppTypography.subtitle2,
  bodyText1: _AppTypography.bodyText1,
  // Default: Text Widget
  bodyText2: _AppTypography.bodyText2,
  // Default: Input error text
  caption: _AppTypography.caption,
  // Default: Button
  button: _AppTypography.button,
  overline: _AppTypography.overline,
);

/// ******* Custom Text *******
class _AppTypography {
  static const TextStyle h1 =
      TextStyle(fontSize: 96, fontWeight: FontWeight.w100);
  static const TextStyle h2 =
      TextStyle(fontSize: 60, fontWeight: FontWeight.w100);
  static const TextStyle h3 =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w800);
  static const TextStyle h4 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w800);
  static const TextStyle h5 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static const TextStyle h6 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const TextStyle subtitle1 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle subtitle2 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w300);
  static const TextStyle bodyText1 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.normal);
  static const TextStyle bodyText2 =
      TextStyle(fontSize: 36, fontWeight: FontWeight.normal);
  static const TextStyle caption =
      TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
  static const TextStyle button =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static const TextStyle overline =
      TextStyle(fontSize: 10, fontWeight: FontWeight.normal);
}

final TextTheme _lightTextTheme = TextTheme(
    headline5: _LightTextStyle._heading,
    bodyText2: _LightTextStyle._taskName,
    bodyText1: _LightTextStyle._taskDuration);

class _LightTextStyle {
  static final TextStyle _heading =
      TextStyle(fontSize: 48.0, color: _LightColor.lightPrimaryColor);
  static final TextStyle _taskName =
      TextStyle(fontSize: 100.0, color: _LightColor.lightPrimaryColor);
  static final TextStyle _taskDuration =
      TextStyle(fontSize: 20.0, color: Colors.grey);
}

final TextTheme _darkTextTheme = TextTheme(
  headline: _DarkTextStyle._heading,
  body1: _DarkTextStyle._taskName,
  body2: _DarkTextStyle._taskDuration,
);

class _DarkTextStyle {
  static final TextStyle _heading =
      TextStyle(fontSize: 24.0, color: _DarkColor.darkOnPrimaryColor);
  static final TextStyle _taskName =
      TextStyle(fontSize: 48.0, color: _DarkColor.darkOnPrimaryColor);
  static final TextStyle _taskDuration = _LightTextStyle._taskDuration;
}
