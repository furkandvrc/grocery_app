import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../app/constants/app/padding_and_radius_size.dart';
import '../../../app/theme/colors.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField(
      {super.key, required this.onChanged, required this.context});
   final ValueChanged<String> onChanged;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      onChanged:onChanged ,
      pinTheme: PinTheme(
        inactiveFillColor: AppColor.lightText,
        selectedFillColor: AppColor.lightText,
        activeFillColor: AppColor.lightText,
        fieldWidth: 60,
        fieldHeight: 60,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(radiusS),
        inactiveColor: AppColor.lightText,
        activeColor: AppColor.lightText,
        disabledColor: AppColor.lightText,
        selectedColor: AppColor.lightText,
      ),
    );
  }
}
