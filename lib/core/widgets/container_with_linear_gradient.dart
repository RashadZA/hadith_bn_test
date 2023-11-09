import 'package:flutter/material.dart';
import 'package:hadith_bn_test/core/utils/design_utils.dart';

class ContainerWithLinearGradient extends StatelessWidget {
  final Widget child;
  const ContainerWithLinearGradient({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.linearGradientBeginColor,
                AppColors.linearGradientEndColor,
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(alHadith),
            leading: icon24PX(AppIcons.menu),
            actions: [
              icon22PX(AppIcons.searchW)
            ],
          ),
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 308),
                color: AppColors.backgroundColor,
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Home Page',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
