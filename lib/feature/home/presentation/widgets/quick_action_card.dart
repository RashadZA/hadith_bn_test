import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/home/presentation/widgets/quick_action_buttons.dart';

class QuickActionCard extends StatelessWidget {
  const QuickActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              QuickActionButton(
                buttonIcon: AppIcons.clock,
                buttonName: "Last",
              ),
              QuickActionButton(
                buttonIcon: AppIcons.goTo,
                buttonName: "Go To",
              ),
              QuickActionButton(
                buttonIcon: AppIcons.apps,
                buttonName: "Apps",
              ),
              QuickActionButton(
                buttonIcon: AppIcons.sadaqa,
                buttonName: "Sadaqa",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
