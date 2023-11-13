import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/components/components.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/core/utils/extensions.dart';
import 'package:hadith_bn_test/feature/section/presentation/controller/section_controller.dart';
import 'package:hadith_bn_test/feature/section/presentation/widgets/section_list.dart';

class SectionPage extends GetWidget<SectionController> {
  final SectionController homeController = Get.put(SectionController());
  SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation){
        return Container(
          color: AppColors.primaryColor,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.primaryColor,
              appBar: AppBar(
                centerTitle: true,
                title: Text("Section Wise",style: AppTextTheme.text16.copyWith(color: AppColors.white, fontWeight: FontWeight.w600),),
              ),
              body: SingleChildScrollView(
                child: Container(
                  width: Get.width,
                  height: Get.height,
                  decoration: const BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14,),
                        child: CoreTextField(
                          hintText: 'Search y chapter',
                          textInputAction: TextInputAction.done,
                          controller:
                          controller.searchFieldEditingController,
                          keyboardType: TextInputType.text,
                          onTap: () =>
                              controller.searchFocus.requestFocus(),
                          onSubmit: (_) =>
                              controller.onSubmitOfSearchFieldButton(),
                          onChanged: (_) =>
                              controller.onChangeOfSearchFieldButton(),
                          suffixIcon: CoreIconButton(
                            icon: AppIcons.search,
                            width: 22,
                            onPressed: () =>
                                controller.onSubmitOfSearchFieldButton(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height - 175,
                        child: Obx(
                              () => controller.sectionList.isNotEmpty
                              ? const SectionCardList()
                              : emptyCard(
                              width: Get.width -
                                  (defaultPadding1 * 2),
                              height: 68)
                              .paddingOnly(top: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

