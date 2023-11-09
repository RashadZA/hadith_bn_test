import 'package:get/get.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/controller/chapter_controller.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/pages/chapter_page.dart';
import 'package:hadith_bn_test/feature/home/presentation/controller/home_controller.dart';
import 'package:hadith_bn_test/feature/home/presentation/pages/home_page.dart';
import 'package:hadith_bn_test/feature/main_view/presentation/controller/main_controller.dart';
import 'package:hadith_bn_test/feature/main_view/presentation/pages/main_view.dart';

part 'app_routes.dart';

class AppPages {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: _Paths.main,
      page: () => const MainView(),
      binding: BindingsBuilder(
        () => Get.lazyPut<MainController>(() => MainController()),
      ),
      children: [
        GetPage(
          name: _Paths.home,
          page: () => HomePage(),
          binding: BindingsBuilder(
                () => Get.lazyPut<HomeController>(() => HomeController()),
          ),
          children: [
            GetPage(
              name: _Paths.chapter,
              page: () => const ChapterPage(),
              binding: BindingsBuilder(
                    () => Get.lazyPut<ChapterController>(() => ChapterController()),
              ),
            ),
          ],
        ),
      ],
    ),
  ];
}

class BindingsX {
  static BindingsBuilder initialBindigs() {
    return BindingsBuilder(() {});
  }
}
