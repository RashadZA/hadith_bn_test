import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<int> selectedTabIndex = 0.obs;
  final PageController pageController = PageController();


  @override
  void onReady() {
    super.onReady();
    init();
  }

  Future<void> init() async {
  }
}