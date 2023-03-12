import 'package:flutter/material.dart';
import 'package:grocery_app/app/constants/app/padding_and_radius_size.dart';
import 'package:grocery_app/app/extension/widget_scale_extension.dart';
import 'package:grocery_app/app/theme/colors.dart';
import 'package:grocery_app/app/theme/text_style.dart';
import 'package:grocery_app/core/i10n/i10n.dart';

import '../../constants/app/app_constants.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColor.primaryContainer,
          borderRadius: BorderRadius.all(Radius.circular(radiusS))),
      width: designWith,
      height: 50.horizontalScale,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppLocalization.getLabels.next,
            style: s16W700().copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
