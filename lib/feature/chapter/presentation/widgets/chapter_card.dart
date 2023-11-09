import 'package:flutter/material.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/chapter/data/models/chapter_model.dart';

class ChapterCard extends StatelessWidget {
  final ChapterModel chapter;
  const ChapterCard({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: defaultDeviceWidth,
      padding: const EdgeInsets.only(left: 14, top: 13, right: 14, bottom: 13),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 42,
            height: 42,
            child: CircleAvatar(
              radius: 42,
              backgroundColor: AppColors.primaryColor,
              child: Text(chapter.chapterId,style: AppTextTheme.text15.copyWith(color: AppColors.white),),

            ),
          ),
          const SizedBox(width: 15,),
          SizedBox(
            height: 68,
            width: defaultDeviceWidth - 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(chapter.title, style: AppTextTheme.text14,),
                Text("Hadith Range: ${chapter.hadisRange}", style: AppTextTheme.text12,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
