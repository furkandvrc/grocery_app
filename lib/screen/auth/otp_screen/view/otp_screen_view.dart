import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:grocery_app/app/components/background/glass_morphic_container.dart';
import 'package:grocery_app/app/constants/app/padding_and_radius_size.dart';
import 'package:grocery_app/app/constants/assets/assets.dart';
import 'package:grocery_app/app/theme/text_style.dart';
import 'package:grocery_app/core/i10n/i10n.dart';
import 'package:grocery_app/screen/auth/login_screen/controller/login_screen_controller.dart';
import '../../../../app/components/buttons/login_register_button.dart';
import '../../../../app/components/textfield/form_textfield.dart';
import '../../../../app/theme/colors.dart';

class OtpScreenView extends GetView<LoginScreenController> {
  const OtpScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    var textEditing = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.only(left: paddingXS, right: paddingXS),
        elevation: 0,
        surfaceTintColor: AppColor.background.withAlpha(0),
        color: AppColor.background.withAlpha(0),
        child: GestureDetector(
            onTap: () {},
            child: LoginRegisterButton(text: AppLocalization.getLabels.submit)),
      ),
      body: GlassMorphicContainer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(otpScreenBg),
          Padding(
            padding: const EdgeInsets.only(left: paddingS, top: paddingXXXXL),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalization.getLabels.enterYourMobileNumber,
                  style: s18W700(),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: paddingS, top: paddingS, bottom: paddingS),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(AppLocalization.getLabels.subtextLoginScreen,
                    style: s12W500())),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: paddingXL),
            child: FormTextField(
              myController: textEditing,
            ),
          ),
        ],
      )),
    );
  }
}
