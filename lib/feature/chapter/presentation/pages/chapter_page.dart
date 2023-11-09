import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/controller/chapter_controller.dart';
import 'package:hadith_bn_test/feature/chapter/presentation/widgets/chapter_card_list.dart';

class ChapterPage extends GetWidget<ChapterController> {
  const ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Al Hadith"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SearchBar(
                  controller: controller.searchFieldEditingController,
                  backgroundColor: MaterialStateProperty.all(AppColors.white),
                  shape: MaterialStateProperty.all(
                    const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(defaultPadding),
                      ),
                    ),
                  ),
                  hintText: 'Search y chapter',
                  hintStyle: MaterialStateProperty.all(
                    AppTextTheme.text14.copyWith(
                      color: const Color(0xFF5C768D),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        print('Use voice command');
                      },
                    ),
                  ],
                  // other arguments
                ),
                const ChapterCardList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
