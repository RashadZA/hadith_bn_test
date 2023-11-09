import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

extension WidgetExtension on Widget {

  /// Converting hexString to Color
  Color fromHexStringToColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  Widget emptyCard({required double width, required double height}) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),);
  }

  Widget iconFromSVG({required String icon, Color? color, required double radius}){
    return SvgPicture.asset(
      icon,
      width: radius,
      colorFilter: ColorFilter.mode(color ?? AppColors.shuttleGrey , BlendMode.srcIn),
      height: radius,
    );

  }
}

 getHeightAccordingToDevice({required double forLargeHeight, required double forLowerHeight}){
  return Get.height > 412 ? forLargeHeight : forLowerHeight;
}
