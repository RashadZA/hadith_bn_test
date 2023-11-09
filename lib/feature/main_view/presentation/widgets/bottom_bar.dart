import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/main_view/presentation/controller/main_controller.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    // return Align(
    //   alignment: Alignment.bottomCenter,
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10),
    //       child: Container(
    //         width: Get.width,
    //         height: 56,
    //         color: AppColors.white,
    //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    //         child: const Row(
    //           mainAxisSize: MainAxisSize.max,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             BottomBarIcon(icon: AppIcons.home, index: 0),
    //
    //             BottomBarIcon(
    //               index: 1,
    //               icon: AppIcons.book,
    //             ),
    //             BottomBarIcon(icon: AppIcons.note, index: 2),
    //             BottomBarIcon(icon: AppIcons.save, index: 3),
    //             BottomBarIcon(icon: AppIcons.user, index: 4),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return OrientationBuilder(
      builder: (context, orientation){
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: Get.width,
                height: 56,
                color: AppColors.white,
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomBarIcon(icon: AppIcons.home, index: 0),

                    BottomBarIcon(
                      index: 1,
                      icon: AppIcons.book,
                    ),
                    BottomBarIcon(icon: AppIcons.note, index: 2),
                    BottomBarIcon(icon: AppIcons.save, index: 3),
                    BottomBarIcon(icon: AppIcons.user, index: 4),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    // return Align(
    //   alignment: Alignment.bottomCenter,
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(10),
    //       child: Container(
    //         width: Get.width,
    //         height: 56,
    //         color: AppColors.white,
    //         padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
    //         child: const Row(
    //           mainAxisSize: MainAxisSize.max,
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             BottomBarIcon(icon: AppIcons.home, index: 0),
    //
    //             BottomBarIcon(
    //               index: 1,
    //               icon: AppIcons.book,
    //             ),
    //             BottomBarIcon(icon: AppIcons.note, index: 2),
    //             BottomBarIcon(icon: AppIcons.save, index: 3),
    //             BottomBarIcon(icon: AppIcons.user, index: 4),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

class BottomBarIcon extends GetWidget<MainController> {
  final int index;
  final String icon;

  const BottomBarIcon({super.key,
    required this.index,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      width: 28,
      child: Column(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              controller.pageController.jumpToPage(index);
              controller.selectedTabIndex.value = index;
              controller.update();
            },
            icon: SvgPicture.asset(
              icon,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(controller.selectedTabIndex.value == index ? AppColors.primaryColor : AppColors.oxy , BlendMode.srcIn),
            ),
          ),
          const Spacer(),
          controller.selectedTabIndex.value == index ? Container(
            height: 4,
            width: 28,
            color: AppColors.primaryColor,
          ) : Container(),
        ],
      ),
    ));
  }
}