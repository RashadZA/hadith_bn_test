import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/section/data/models/section_model.dart';

class SectionCard extends StatelessWidget {
  final SectionModel section;
  const SectionCard({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Container(
          width: Get.width - (defaultPadding1 * 2),
          padding:
              const EdgeInsets.only(left: 14, top: 13, right: 14, bottom: 13),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              section.number.isNotEmpty
                  ? Text(
                      section.number,
                      style: AppTextTheme.text16,
                      textAlign: TextAlign.center,
                    )
                  : Container(),
              SizedBox(
                height: section.number.isNotEmpty ? 3 : 0,
              ),
              section.title.isNotEmpty
                  ? Text(
                      section.title,
                      style: AppTextTheme.text16
                          .copyWith(overflow: TextOverflow.visible),
                      textAlign: TextAlign.center,
                    )
                  : Container(),
              SizedBox(
                height: section.title.isNotEmpty ? 3 : 0,
              ),
              section.preface.isNotEmpty
                  ? Text(
                      section.preface,
                      style: AppTextTheme.text16
                          .copyWith(overflow: TextOverflow.visible),
                      textAlign: TextAlign.center,
                    )
                  : Container(),
            ],
          ),
        );
      },
    );
  }
}
