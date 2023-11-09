import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

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
}