import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/components/components.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

void goToDialog({required Function onTab}) {
    double height = Get.height * 0.5;
    double width = Get.width * 0.8;

    Get.dialog(
      Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: height * 0.8,
                width: width,
                // color: AppColors.primaryColor,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      AppIcons.goTo,
                      width: width * 0.6,
                      height: height * 0.4,
                    ),
                    Text(
                      "Go To Hadith box",
                      style: AppTextTheme.text18.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.visible),
                    ),

                  ],
                ).paddingAll(5),
              ),
              Center(
                child: CoreButton(
                  color: AppColors.primaryColor,
                  onPressed: () => onTab(),
                  child: SizedBox(
                    width: width * 0.4,
                    height: height * 0.1,
                    child: Center(
                      child: Text(
                      "Close",
                      style: AppTextTheme.text16.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                      ),
                ),
                    ),
                  ),),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }


