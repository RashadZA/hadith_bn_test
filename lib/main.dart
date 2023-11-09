import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/routes/app_pages.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: alHadith,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.main,
      getPages: AppPages.routes,
      initialBinding: BindingsX.initialBindigs(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primaryColor,
            elevation: 0,
            iconTheme: const IconThemeData(
                color: Colors.white
            ),
          titleTextStyle: AppTextTheme.text16
              .copyWith(color: AppColors.white, fontWeight: FontWeight.w600),
        ),
        textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
    );
  }
}
