part of 'design_utils.dart';

class AppTheme {
  AppTheme._();

  static const double defaultIconSize = 22;

  static const double defaultElevation = 2;

  static const double appBarHeight = 42;

  static final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColor,
    splashColor: AppColors.transparent,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    hintColor: AppColors.primaryColor.withOpacity(.4),
    iconTheme: const IconThemeData(size: defaultIconSize),
    appBarTheme: AppBarTheme(
      elevation: defaultElevation,
      toolbarHeight: appBarHeight,
      titleTextStyle: AppTextTheme.text16
          .copyWith(color: AppColors.white, fontWeight: FontWeight.w600),
      backgroundColor: AppColors.transparent,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      primaryColor: AppColors.primaryColor,
      barBackgroundColor: AppColors.primaryShadowColor,
      scaffoldBackgroundColor: AppColors.primaryShadowColor,
      textTheme: CupertinoTextThemeData(
        textStyle: AppTextTheme.text14,
        primaryColor: AppColors.primaryColor,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
  );
}
