import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<int> selectedTabIndex = 0.obs;
  RxBool isSubscriptionExpired = true.obs;
  final PageController pageController = PageController();
  late final TabController tabController;

  RxBool isProfileImageUploading = false.obs;

  @override
  void onReady() {
    super.onReady();
    init();
  }

  Future<void> init() async {
  }


}