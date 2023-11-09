import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/main_view/controller/main_controller.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: Get.width,
          height: 56,
          color: AppColors.white,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _BottomBarIcon(icon: AppIcons.home, index: 0),

              _BottomBarIcon(
                index: 1,
                icon: AppIcons.book,
              ),
              _BottomBarIcon(icon: AppIcons.note, index: 2),
              _BottomBarIcon(icon: AppIcons.save, index: 3),
              _BottomBarIcon(icon: AppIcons.user, index: 4),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBarIcon extends GetWidget<MainController> {
  final int index;
  final String icon;

  const _BottomBarIcon({
    required this.index,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      width: 28,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
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
              width: 20,
              height: 20,
              colorFilter: ColorFilter.mode(controller.selectedTabIndex.value == index ? AppColors.primaryColor : AppColors.oxy , BlendMode.srcIn),
            ),
          ),
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