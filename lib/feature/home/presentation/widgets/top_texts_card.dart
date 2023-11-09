import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

class TopTextsCard extends StatelessWidget {
  const TopTextsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72,
            width: Get.width,
            child: Text(
              "“A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
              style: AppTextTheme.text14.copyWith(
                color: AppColors.white,
                overflow: TextOverflow.visible,
                fontFamily: AppTextTheme.getHindSiliguri,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 18,
            width: Get.width,
            child: Text(
              "[ Bukhari and Muslim ]",
              style: AppTextTheme.text14.copyWith(
                color: AppColors.white,
                overflow: TextOverflow.visible,
                fontFamily: AppTextTheme.getHindSiliguri,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
