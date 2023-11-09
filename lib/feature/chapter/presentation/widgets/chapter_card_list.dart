import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/core/utils/extensions.dart';
import 'package:hadith_bn_test/feature/chapter/data/models/chapter_model.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/controller/chapter_controller.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/widgets/chapter_card.dart';

class ChapterCardList extends GetWidget<ChapterController> {
  const ChapterCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Obx(
    //   () => ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: controller.chapterList.length,
    //     padding: const EdgeInsets.symmetric(vertical: defaultPadding),
    //     itemBuilder: (BuildContext context, int index) {
    //       return Column(
    //         children: [
    //           ChapterCard(
    //             chapter: controller.chapterList[index],
    //           ).listAnimation(position: index),
    //           const SizedBox(height: defaultPadding,),
    //         ],
    //       );
    //     },
    //   ),
    // );
    return Obx(() => ListView.builder(
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: controller.chapterList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              const SizedBox(
                height: defaultPadding,
              ),
              ChapterCard(
                chapter: controller.chapterList[index],
              ),
              controller.chapterList.length - 1 == index
                  ? const SizedBox(
                height: defaultPadding,
              )
                  : Container(),
            ],
          );
        }),);
  }
}
