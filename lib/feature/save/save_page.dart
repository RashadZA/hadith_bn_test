import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

class SavePage extends StatelessWidget {
  const SavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: Get.width,
            height: Get.height - 50,
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Center(
              child: Text(
                "Save Page",
                style: AppTextTheme.text24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
