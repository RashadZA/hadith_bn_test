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
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: Get.width,
              height: 300,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primaryColor,
                      AppColors.linearGradientEndColor,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: SvgPicture.asset(
                AppIcons.mask,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 30, bottom: 30),
              child: Column(
                children: [
                  const TopTextsCard(),
                  const SizedBox(
                    height: 100,
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
                        // const HadithBookCard(
                        //   hadithBookTitle: "Sahih Mus",
                        //   hadithBookSubTitle: "Sahih Muslim",
                        //   hadithBookTotalHadith: "7563",
                        //   hadithBookABVRCode: 'B',
                        //   hadithBookColor: Colors.green,
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // const HadithBookCard(
                        //   hadithBookTitle: "Sahih",
                        //   hadithBookSubTitle: "Sahih Muslim",
                        //   hadithBookTotalHadith: "8547",
                        //   hadithBookABVRCode: 'B',
                        //   hadithBookColor: Colors.blue,
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // const HadithBookCard(
                        //   hadithBookTitle: "Sahih Mus",
                        //   hadithBookSubTitle: "Sahih Muslim",
                        //   hadithBookTotalHadith: "7458",
                        //   hadithBookABVRCode: 'B',
                        //   hadithBookColor: Colors.blueGrey,
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // const HadithBookCard(
                        //   hadithBookTitle: "Sahih Mu",
                        //   hadithBookSubTitle: "Sahih Muslim",
                        //   hadithBookTotalHadith: "55555",
                        //   hadithBookABVRCode: 'B',
                        //   hadithBookColor: Colors.blueAccent,
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // const HadithBookCard(
                        //   hadithBookTitle: "Sahih M",
                        //   hadithBookSubTitle: "Sahih Muslim",
                        //   hadithBookTotalHadith: "444",
                        //   hadithBookABVRCode: 'B',
                        //   hadithBookColor: Colors.orange,
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // const HadithBookCard(
                        //   hadithBookTitle: "Sahih Muslim T",
                        //   hadithBookSubTitle: "Sahih Muslim",
                        //   hadithBookTotalHadith: "1111",
                        //   hadithBookABVRCode: 'B',
                        //   hadithBookColor: Colors.cyanAccent,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
