import 'package:flutter/material.dart';
import 'package:grocery_app/app/constants/app/app_constants.dart';
import 'package:grocery_app/app/constants/app/padding_and_radius_size.dart';
import 'package:grocery_app/app/theme/colors.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: paddingXXS),
      child: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColor.primary),
        width: designWith / 7,
        height: designHeight / 16,
        child: const Icon(
          Icons.location_on_outlined,
          color: AppColor.background,
          size: radiusXXL,
        ),
      ),
    );
  }
}
