import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

class QuickActionButton extends StatelessWidget {
  final String buttonIcon;
  final String buttonName;
  const QuickActionButton({super.key, required this.buttonIcon, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76.5,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          SizedBox(
            width: 76.5,
            height: 45,
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.grey
              ),
              child: SvgPicture.asset(
                buttonIcon,
                width: 24,
                height: 24,
              ),
            ),
          ),
          SizedBox(
            width:76.5,
            height: 16,
            child: Text(
              buttonName,
              style: AppTextTheme.text12.copyWith(color: AppColors.blackCoral,),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
