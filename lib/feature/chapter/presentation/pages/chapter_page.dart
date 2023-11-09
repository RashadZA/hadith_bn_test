import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/components/components.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/controller/chapter_controller.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/widgets/chapter_card_list.dart';

class ChapterPage extends GetWidget<ChapterController> {
  const ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        return Container(
          color: AppColors.primaryColor,
          child: SafeArea(
            child: OrientationBuilder(
              builder: (context, orientation){
                return Obx(
                      () => Stack(
                    children: [
                      Scaffold(
                        backgroundColor: Colors.grey,
                        appBar: AppBar(
                          elevation: 0,
                          toolbarHeight: 90,
                          leadingWidth: 20,
                          title: RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                                text: controller.chapterTitle.value,
                                style: AppTextTheme.text16.copyWith(
                                    color: AppColors.white, fontWeight: FontWeight.w600),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\n${controller.chapterSubTitle.value}',
                                    style: AppTextTheme.text12.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ]),
                          ),
                          leading: Padding(
                            padding: const EdgeInsets.only(left: 12.5),
                            child: CoreIconButton(
                              icon: AppIcons.back,
                              onPressed: () => Get.back(),
                              color: AppColors.white,
                            ),
                          ),
                          actions: const [
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ),
                      Container(),
                      Positioned(
                        top: 70,
                        child: Container(
                          width: Get.width,
                          padding: const EdgeInsets.only(
                              left: defaultPadding,
                              right: defaultPadding,
                              top: defaultPadding),
                          decoration: const BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              CoreTextField(
                                hintText: 'Search y chapter',
                                textInputAction: TextInputAction.done,
                                controller: controller.searchFieldEditingController,
                                keyboardType: TextInputType.text,
                                onSubmit: (_) => controller.onSubmitOfSearchFieldButton(),
                                suffixIcon: CoreIconButton(
                                  icon: AppIcons.search,
                                  width: 22,
                                  onPressed: () => controller.onSubmitOfSearchFieldButton(),
                                ),
                              ),
                              SizedBox(
                                height: Get.height - 175,
                                child: const ChapterCardList(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),),
        );
      },
    );
    // return Container(
    //   color: AppColors.primaryColor,
    //   child: SafeArea(
    //       child: OrientationBuilder(
    //         builder: (context, orientation){
    //           return Obx(
    //                 () => Stack(
    //               children: [
    //                 Scaffold(
    //                   backgroundColor: Colors.grey,
    //                   appBar: AppBar(
    //                     elevation: 0,
    //                     toolbarHeight: 90,
    //                     leadingWidth: 20,
    //                     title: RichText(
    //                       textAlign: TextAlign.start,
    //                       text: TextSpan(
    //                           text: controller.chapterTitle.value,
    //                           style: AppTextTheme.text16.copyWith(
    //                               color: AppColors.white, fontWeight: FontWeight.w600),
    //                           children: <TextSpan>[
    //                             TextSpan(
    //                               text: '\n${controller.chapterSubTitle.value}',
    //                               style: AppTextTheme.text12.copyWith(
    //                                 color: AppColors.white,
    //                               ),
    //                             ),
    //                           ]),
    //                     ),
    //                     leading: Padding(
    //                       padding: const EdgeInsets.only(left: 12.5),
    //                       child: CoreIconButton(
    //                         icon: AppIcons.back,
    //                         onPressed: () => Get.back(),
    //                         color: AppColors.white,
    //                       ),
    //                     ),
    //                     actions: const [
    //                       Icon(Icons.more_vert),
    //                     ],
    //                   ),
    //                 ),
    //                 Container(),
    //                 Positioned(
    //                   top: 70,
    //                   child: Container(
    //                     width: Get.width,
    //                     padding: const EdgeInsets.only(
    //                         left: defaultPadding,
    //                         right: defaultPadding,
    //                         top: defaultPadding),
    //                     decoration: const BoxDecoration(
    //                       color: AppColors.backgroundColor,
    //                       borderRadius: BorderRadius.only(
    //                         topLeft: Radius.circular(15),
    //                         topRight: Radius.circular(15),
    //                       ),
    //                     ),
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: <Widget>[
    //                         CoreTextField(
    //                           hintText: 'Search y chapter',
    //                           textInputAction: TextInputAction.done,
    //                           controller: controller.searchFieldEditingController,
    //                           keyboardType: TextInputType.text,
    //                           onSubmit: (_) => controller.onSubmitOfSearchFieldButton(),
    //                           suffixIcon: CoreIconButton(
    //                             icon: AppIcons.search,
    //                             width: 22,
    //                             onPressed: () => controller.onSubmitOfSearchFieldButton(),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           height: Get.height - 175,
    //                           child: const ChapterCardList(),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           );
    //         },
    //       ),),
    // );
  }
}
