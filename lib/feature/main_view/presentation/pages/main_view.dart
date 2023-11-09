import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/feature/book/book_page.dart';
import 'package:hadith_bn_test/feature/home/presentation/pages/home_page.dart';
import 'package:hadith_bn_test/feature/main_view/controller/main_controller.dart';
import 'package:hadith_bn_test/feature/main_view/widgets/bottom_bar.dart';
import 'package:hadith_bn_test/feature/note/note_page.dart';
import 'package:hadith_bn_test/feature/save/save_page.dart';
import 'package:hadith_bn_test/feature/user/user_page.dart';

class MainView extends GetWidget<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.selectedTabIndex.value = value;
          controller.update();
        },
        children: const [
          HomePage(),
          BookPage(),
          NotePage(),
          SavePage(),
          UserPage(),
        ],
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

// class _BottomBar extends StatelessWidget {
//   const _BottomBar();
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: AppColors.white,
//       padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
//       child: const Row(
//         mainAxisSize: MainAxisSize.max,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           _BottomBarIcon(icon: AppIcons.home, index: 0),
//
//           _BottomBarIcon(
//             index: 1,
//             icon: AppIcons.book,
//           ),
//           _BottomBarIcon(icon: AppIcons.note, index: 2),
//           _BottomBarIcon(icon: AppIcons.save, index: 3),
//           _BottomBarIcon(icon: AppIcons.user, index: 4),
//         ],
//       ),
//     );
//   }
// }
//
// class _BottomBarIcon extends GetWidget<MainController> {
//   final int index;
//   final String icon;
//
//   const _BottomBarIcon({
//     required this.index,
//     required this.icon,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       padding: EdgeInsets.zero,
//       onPressed: () {
//         controller.pageController.jumpToPage(index);
//         controller.selectedTabIndex.value = index;
//         controller.update();
//       },
//       icon: Obx(
//             () => SvgPicture.asset(
//               icon,
//               width: 24,
//               height: 24,
//               colorFilter: ColorFilter.mode(controller.selectedTabIndex.value == index ? AppColors.primaryColor : AppColors.oxy , BlendMode.srcIn),
//             ),
//       ),
//     );
//   }
// }
//
// class BottomTabBar extends GetWidget<MainController> {
//   const BottomTabBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       controller: controller.tabController,
//       unselectedLabelColor: AppColors.oxy,
//       labelColor: AppColors.primaryColor,
//       onTap: (index) {
//         controller.pageController.jumpToPage(index);
//         controller.selectedTabIndex.value = index;
//         controller.update();
//       },
//       tabs: const [
//         Tab(icon: BottomTabIcon(icon: AppIcons.home, index: 0),),
//         Tab(icon: BottomTabIcon(icon: AppIcons.book, index: 1),),
//         Tab(icon: BottomTabIcon(icon: AppIcons.note, index: 2),),
//         Tab(icon: BottomTabIcon(icon: AppIcons.save, index: 3),),
//         Tab(icon: BottomTabIcon(icon: AppIcons.user, index: 4),),
//       ],
//     );
//   }
// }
// class BottomTabIcon extends GetWidget<MainController> {
//   final int index;
//   final String icon;
//
//   const BottomTabIcon({super.key,
//     required this.index,
//     required this.icon,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.asset(
//       icon,
//       width: 24,
//       height: 24,
//       colorFilter: ColorFilter.mode(controller.selectedTabIndex.value == index ? AppColors.primaryColor : AppColors.oxy , BlendMode.srcIn),
//     );
//   }
// }
