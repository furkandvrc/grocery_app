import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import '../../constants/assets/assets.dart';
import '../../theme/colors.dart';

class GlassMorphicContainer extends StatelessWidget {
  const GlassMorphicContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Image.asset(
            backGround,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
            scale: 1,
          ),
          Center(
              child: GlassmorphicContainer(
            width: double.infinity,
            height: double.infinity,
            borderRadius: 0,
            blur: 30,
            alignment: Alignment.bottomCenter,
            border: 0,
            linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColor.background.withAlpha(190),
                  AppColor.background.withAlpha(230),
                ],
                stops: const [
                  0.1,
                  1,
                ]),
            borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.background.withAlpha(255),
                AppColor.background.withAlpha(255),
              ],
            ),
            child: child,
          ))
        ]));
  }
}
