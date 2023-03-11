
import 'package:flutter/material.dart';
import '../../constants/app/padding_and_radius_size.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';
import '../buttons/custom_buttons.dart';
import '../dialog/simple_dialog.dart';

class ErrorMessageDialog {
  static Future show(
      {required String text,
      Function()? onTap,
      Function()? onTapSecondBtn,
      String? buttonText,
      String? secondButtonText,
      bool? barrierDismissible}) {
    return AppSimpleDialog().show(
      barrierDismissible: barrierDismissible,
      children: [
        Center(
            child: Text(
          text,
          style: s14W700(),
          textAlign: TextAlign.center,
        )),
        const SizedBox(
          height: paddingM,
        ),
        buttonText != null
            ? AppButton(
                onTap: () => onTap?.call(),
                title: buttonText,
                textStyle: s16W700(),
              )
            : const SizedBox.shrink(),
        secondButtonText != null
            ? AppButton(
                padding: const EdgeInsets.only(top: paddingXS),
                onTap: () => onTapSecondBtn?.call(),
                title: secondButtonText,
                textStyle: s16W700(),
                buttonBgColor: Colors.transparent,
                buttonBorderColor: AppColor.secondary,
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
