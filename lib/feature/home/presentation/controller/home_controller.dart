import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/feature/home/data/models/navigation_model.dart';

class HomeController extends GetxController {


  int selectedTab = 0;
  List<NavigationModel> navigationBarItems = [];

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {

  }

}