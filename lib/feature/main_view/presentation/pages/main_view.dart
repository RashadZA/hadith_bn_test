import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/feature/home/presentation/pages/home_page.dart';
import 'package:hadith_bn_test/feature/main_view/presentation/controller/main_controller.dart';
import 'package:hadith_bn_test/feature/main_view/presentation/widgets/bottom_bar.dart';
import 'package:hadith_bn_test/feature/note/note_page.dart';
import 'package:hadith_bn_test/feature/save/save_page.dart';
import 'package:hadith_bn_test/feature/section/presentation/pages/section_page.dart';
import 'package:hadith_bn_test/feature/user/user_page.dart';

class MainView extends GetWidget<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: controller.pageController,
            onPageChanged: (value) {
              controller.selectedTabIndex.value = value;
              controller.update();
            },
            children: [
              HomePage(),
              SectionPage(),
              const NotePage(),
              const SavePage(),
              const UserPage(),
            ],
          ),
          const BottomBar(),
        ],
      ),
    );
  }
}
