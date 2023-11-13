import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/feature/section/data/datasources/section_table.dart';
import 'package:hadith_bn_test/feature/section/data/models/section_model.dart';

class SectionController extends GetxController {

  RxList<SectionModel> sectionList = <SectionModel>[].obs;

  final TextEditingController searchFieldEditingController = TextEditingController();

  RxList<SectionModel> tempSectionList = <SectionModel>[].obs;
  FocusNode searchFocus = FocusNode();

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    List section = await SectionTable().getSectionList();
    update();
    sectionList.clear();
    for(Map<String, dynamic> sec in section){
        sectionList.add(SectionModel.fromJsonToModel(sec));
    }
    update();
  }

  Future<void> onChangeOfSearchFieldButton() async {
    tempSectionList.clear();
    for (var element in sectionList) {
      if(element.title.contains(searchFieldEditingController.value.text)){
        tempSectionList.add(element);
      }
    }
    if(tempSectionList.isNotEmpty){
      sectionList.clear();
      sectionList.addAll(tempSectionList);
    }
    update();
  }
  Future<void> onSubmitOfSearchFieldButton() async {
    if(searchFieldEditingController.text.isEmpty){
      init();
    }else {
      onChangeOfSearchFieldButton();
      searchFieldEditingController.clear();
      searchFocus.unfocus();
    }
    update();
  }
}