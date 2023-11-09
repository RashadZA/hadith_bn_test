import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/core/utils/extensions.dart';

class TopTextsCard extends StatelessWidget {
   TopTextsCard({super.key});
final List <Map<String,String>> demoTextList = [
  {
    "text1": "TextList 1: “A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
    "text2": "TextList 1: [ Bukhari and Muslim ]"
  },
  {
    "text1": "TextList 2: “A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
    "text2": "TextList 2: [ Bukhari and Muslim ]"
  },
  {
    "text1": "TextList 3: “A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
    "text2": "TextList 3: [ Bukhari and Muslim ]"
  },
  {
    "text1": "TextList 4: “A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
    "text2": "TextList 4: [ Bukhari and Muslim ]"
  },
  {
    "text1": "TextList 5: “A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
    "text2": "TextList 5: [ Bukhari and Muslim ]"
  },
  {
    "text1": "TextList 6: “A slave [of Allah] may utter a word without giving it much thought by which he slips into the fire a distance further than that between east and west.”",
    "text2": "TextList 6: [ Bukhari and Muslim ]"
  }
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: getHeightAccordingToDevice(forLargeHeight: 122,forLowerHeight: 102),
      child: CarouselSlider(
        options: CarouselOptions(),
        items: demoTextList
            .map((item) => Container(
          height: getHeightAccordingToDevice(forLargeHeight: 122,forLowerHeight: 102),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 72,
                width: Get.width,
                child: Text(
                  "${item['text1']}",
                  style: AppTextTheme.text14.copyWith(
                    color: AppColors.white,
                    overflow: TextOverflow.visible,
                    fontFamily: AppTextTheme.getHindSiliguri,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
               SizedBox(
                height: getHeightAccordingToDevice(forLargeHeight: 30,forLowerHeight: 10),
              ),
              SizedBox(
                height: 20,
                width: Get.width,
                child: Text(
                  "${item['text2']}",
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
        ))
            .toList(),
      ),
    );
  }
}
