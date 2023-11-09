import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/chapter/data/models/chapter_model.dart';

class ChapterController extends GetxController {

  RxString chapterTitle = "".obs;
  RxString chapterSubTitle = "".obs;

  final TextEditingController searchFieldEditingController = TextEditingController();
  RxList<ChapterModel> chapterList = <ChapterModel>[].obs;
  RxList<ChapterModel> tempChapterList = <ChapterModel>[].obs;
  List<Map<String, dynamic>> cld = [
    {
      "id": "1",
      "chapter_id": "1",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "1"
    },
    {
      "id": "2",
      "chapter_id": "2",
      "title": "ঈমান",
      "hadis_range": "৮ - ৫৮",
      "number": "2"
    },
    {
      "id": "3",
      "chapter_id": "3",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "৫৯ - ১৩৪",
      "number": "3"
    },
    {
      "id": "4",
      "chapter_id": "4",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "4"
    },
    {
      "id": "5",
      "chapter_id": "5",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "5"
    },
    {
      "id": "6",
      "chapter_id": "6",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "6"
    },
    {
      "id": "7",
      "chapter_id": "7",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "7"
    },
    {
      "id": "8",
      "chapter_id": "8",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "8"
    },
    {
      "id": "9",
      "chapter_id": "9",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "9"
    },
    {
      "id": "10",
      "chapter_id": "10",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "10"
    },
    {
      "id": "11",
      "chapter_id": "11",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "11"
    },
    {
      "id": "12",
      "chapter_id": "12",
      "title": "ওহীর সূচনা অধ্যায়",
      "hadis_range": "১ - ৭",
      "number": "12"
    },
    {
      "id": "13",
      "chapter_id": "13",
      "title": "Hadish Test 1",
      "hadis_range": "১ - ৭",
      "number": "13"
    },
    {
      "id": "14",
      "chapter_id": "14",
      "title": "SWaW T 1",
      "hadis_range": "১ - ৭",
      "number": "14"
    }
  ];
  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    getDataWhileRoutingToItemScreen();
    chapterList.value = [];
    for(Map<String, dynamic> chap in cld){
      chapterList.add(ChapterModel.fromJsonToMap(chap));
    }
  }
  Future<void> getDataWhileRoutingToItemScreen() async {
    chapterTitle.value = Get.parameters[title] ?? "";
    chapterSubTitle.value = Get.parameters[totalHadith] ?? "";
    update();
  }
  Future<void> onSubmitOfSearchFieldButton() async {
    tempChapterList.clear();
    print('submitted: ${searchFieldEditingController.value.text}');
    for (var element in chapterList) {
      print("In Lopp: $element");
      if(element.title.contains(searchFieldEditingController.value.text)){
        tempChapterList.add(element);
      }
    }
    chapterList.clear();
    chapterList.addAll(tempChapterList);
    print('After submitted: $tempChapterList');
    searchFieldEditingController.clear();
    update();
  }

}