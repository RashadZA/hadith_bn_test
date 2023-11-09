import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/core/utils/extensions.dart';
import 'package:hadith_bn_test/feature/home/presentation/controller/home_controller.dart';
import 'package:hadith_bn_test/feature/home/presentation/widgets/hadith_book_card.dart';
import 'package:hadith_bn_test/feature/home/presentation/widgets/quick_action_card.dart';
import 'package:hadith_bn_test/feature/home/presentation/widgets/top_texts_card.dart';

class HomePage extends GetWidget<HomeController> {
  final HomeController homeController = Get.put(HomeController());
   HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text(alHadith),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: OrientationBuilder(
          builder: (context, orientation){
            return Stack(
              children: [
                Container(
                  width: Get.width,
                  height: getHeightAccordingToDevice(forLargeHeight: 300,forLowerHeight: 200),
                  decoration:  BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.primaryColor,
                        AppColors.linearGradientEndColor,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(getHeightAccordingToDevice(forLargeHeight: 20,forLowerHeight: 35),),
                      bottomRight: Radius.circular(getHeightAccordingToDevice(forLargeHeight: 20,forLowerHeight: 35),),),),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(getHeightAccordingToDevice(forLargeHeight: 20,forLowerHeight: 35),),
                      bottomRight: Radius.circular(getHeightAccordingToDevice(forLargeHeight: 20,forLowerHeight: 35),),),
                    child: SvgPicture.asset(
                      AppIcons.mask,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 30, bottom: 30),
                  child: Column(
                    children: [
                      TopTextsCard(),
                      SizedBox(
                        height: getHeightAccordingToDevice(forLargeHeight: 100,forLowerHeight: 20),
                      ),
                      const QuickActionCard(),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "All Hadith Book",
                              style: AppTextTheme.text15.copyWith(
                                  color: AppColors.oxy,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Obx(() => controller.booksList.isNotEmpty ? ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: controller.booksList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      HadithBookCard(
                                        booksModel: controller.booksList[index],
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                    ],
                                  );
                                }) : emptyCard(width: 380,height: 68)),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
