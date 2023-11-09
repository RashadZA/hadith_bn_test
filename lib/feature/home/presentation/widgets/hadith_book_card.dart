import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/routes/app_pages.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/home/data/models/books_model.dart';

class HadithBookCard extends StatelessWidget {
  final BooksModel booksModel;
  const HadithBookCard({
    super.key,
    required this.booksModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.chapter,parameters: {
          title: booksModel.title,
          totalHadith: booksModel.numberOfHadis
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
            Stack(
              children: [
                SizedBox(
                  width: 46,
                  height: 46,
                  child: SvgPicture.asset(
                  AppIcons.polygon,
                  width: 46,
                  height: 46,
                  colorFilter: ColorFilter.mode(Colors.green, BlendMode.srcIn),
                ),
                ),
                SizedBox(
                  width: 46,
                  height: 46,
                  child: Center(
                    child: Text(
                      booksModel.abvrCode,
                      style: AppTextTheme.text18.copyWith(color: AppColors.white),
                    ),
                  ),
                ),

              ],
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
                    booksModel.title,
                    style: AppTextTheme.text14,
                  ),
                  Text(
                    booksModel.title,
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
                    booksModel.numberOfHadis,
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
