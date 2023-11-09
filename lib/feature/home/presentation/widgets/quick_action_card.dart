import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/home/presentation/controller/home_controller.dart';
import 'package:hadith_bn_test/feature/home/presentation/widgets/quick_action_buttons.dart';

class QuickActionCard extends GetWidget<HomeController> {
  const QuickActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      width: Get.width,
      height: 86,
      child: Center(
        child: Container(
          width: 358,
          padding: const EdgeInsets.only(left: 15,right: 15),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeInLeft(animate: controller.quickActionAnimateStatus.value,child: QuickActionButton(
                buttonIcon: AppIcons.clock,
                buttonName: "Last",
                onPressed: (){},
              ),),
              FadeIn(animate: controller.quickActionAnimateStatus.value,child: QuickActionButton(
                buttonIcon: AppIcons.goTo,
                buttonName: "Go To",
                onPressed: ()=> controller.quickActionAnimateStatusChange(),
              ),),
              FadeInUp(animate: controller.quickActionAnimateStatus.value,child:  QuickActionButton(
                buttonIcon: AppIcons.apps,
                buttonName: "Apps",
                onPressed: (){},
              ),),
              FadeInDown(animate: controller.quickActionAnimateStatus.value,child: QuickActionButton(
                buttonIcon: AppIcons.sadaqa,
                buttonName: "Sadaqa",
                onPressed: (){},
              ),),

            ],
          ),
        ),
      ),
    ));
  }
}
