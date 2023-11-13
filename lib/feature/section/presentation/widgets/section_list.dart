import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/section/presentation/controller/section_controller.dart';
import 'package:hadith_bn_test/feature/section/presentation/widgets/section_card.dart';

class SectionCardList extends GetWidget<SectionController> {
  const SectionCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        return Obx(() =>  ListView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: controller.sectionList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  SectionCard(
                    section: controller.sectionList[index],
                  ),
                  controller.sectionList.length - 1 == index
                      ? const SizedBox(
                    height:  60,
                  )
                      : Container(),
                ],
              );
            }),);
      },
    );
  }
}