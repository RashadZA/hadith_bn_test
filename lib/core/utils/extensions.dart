import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

extension WidgetExtension on Widget {
  Widget listAnimation({
    required int position,
    double? verticalOffset,
    double? horizontalOffset,
    Duration? delay = const Duration(milliseconds: 0),
  }) {
    return AnimationConfiguration.staggeredList(
      position: position,
      child: FadeInAnimation(
        delay: delay,
        child: SlideAnimation(
          delay: delay,
          verticalOffset: verticalOffset,
          horizontalOffset: horizontalOffset,
          child: this,
        ),
      ),
    );
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
}