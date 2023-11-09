import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';
import 'package:hadith_bn_test/feature/chapter/data/models/chapter_model.dart';

class ChapterController extends GetxController {
  final TextEditingController searchFieldEditingController = TextEditingController();
  RxList<ChapterModel> chapterList = <ChapterModel>[].obs;
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
    }
  ];
  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    chapterList.value = [];
    for(Map<String, dynamic> chap in cld){
      chapterList.add(ChapterModel.fromJsonToMap(chap));
    }
  }

  Future<void> onSubmitOfSearchFieldButton(String submitText) async {
    print('submitted: ${searchFieldEditingController.value.text}');
    update();
  }

}