import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/routes/app_pages.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

class HadithBookCard extends StatelessWidget {
  final String hadithBookTitle;
  final String hadithBookSubTitle;
  final String hadithBookABVRCode;
  final String hadithBookTotalHadith;
  final Color hadithBookColor;
  const HadithBookCard({
    super.key,
    required this.hadithBookTitle,
    required this.hadithBookSubTitle,
    required this.hadithBookABVRCode,
    required this.hadithBookTotalHadith,
    required this.hadithBookColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.chapter,parameters: {
          title: hadithBookTitle,
          totalHadith: hadithBookTotalHadith
        });
      },
      child: Container(
        width: 380,
        height: 68,
        padding: const EdgeInsets.only(
          left: 11,
          top: 14,
          right: 11,
          bottom: 14,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 46,
              height: 46,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    AppIcons.polygon,
                    width: 46,
                    height: 46,
                    colorFilter: ColorFilter.mode(hadithBookColor, BlendMode.srcIn),
                  ),
                  Center(
                    child: Text(
                      hadithBookABVRCode,
                      style: AppTextTheme.text18.copyWith(color: AppColors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 157,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hadithBookTitle,
                    style: AppTextTheme.text14,
                  ),
                  Text(
                    hadithBookSubTitle,
                    style: AppTextTheme.text12.copyWith(
                      fontFamily: AppTextTheme.getInter,
                      fontWeight: FontWeight.w400,
                      color: AppColors.oxy.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            SizedBox(
              width: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hadithBookTotalHadith,
                    style: AppTextTheme.text14,
                  ),
                  Text(
                    "Hadith",
                    style: AppTextTheme.text12.copyWith(
                      fontFamily: AppTextTheme.getInter,
                      fontWeight: FontWeight.w400,
                      color: AppColors.oxy.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
