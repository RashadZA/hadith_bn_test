import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/chapter/data/datasources/chapter_table.dart';
import 'package:hadith_bn_test/feature/chapter/data/models/chapter_model.dart';

class ChapterController extends GetxController {

  RxString chapterTitle = "".obs;
  RxString chapterSubTitle = "".obs;
  RxString chapterBookID = "".obs;

  final TextEditingController searchFieldEditingController = TextEditingController();
  RxList<ChapterModel> chapterList = <ChapterModel>[].obs;
  RxList<ChapterModel> tempChapterList = <ChapterModel>[].obs;
  FocusNode searchFocus = FocusNode();
  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    getDataWhileRoutingToItemScreen();
    List chapter = await ChapterTable().getChapterListAccordingToBookID(bookID: chapterBookID.value);
    chapterList.value = [];
    for(Map<String, dynamic> chap in chapter){
      chapterList.add(ChapterModel.fromJsonToMap(chap));
    }
  }
  Future<void> getDataWhileRoutingToItemScreen() async {
    chapterTitle.value = Get.parameters[title] ?? "";
    chapterSubTitle.value = Get.parameters[totalHadith] ?? "";
    chapterBookID.value = Get.parameters[bookId] ?? "";
    update();
  }
  Future<void> onChangeOfSearchFieldButton() async {
    tempChapterList.clear();
    for (var element in chapterList) {
      if(element.title.contains(searchFieldEditingController.value.text)){
        tempChapterList.add(element);
      }
    }
    if(tempChapterList.isNotEmpty){
      chapterList.clear();
      chapterList.addAll(tempChapterList);
    }
    update();
  }
  Future<void> onSubmitOfSearchFieldButton() async {
    onChangeOfSearchFieldButton();
    searchFieldEditingController.clear();
    update();
  }

}