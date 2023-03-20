import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/app/extension/widget_scale_extension.dart';
import '../../../core/i10n/i10n.dart';
import '../../constants/app/app_constants.dart';
import '../../constants/app/padding_and_radius_size.dart';
import '../../theme/colors.dart';

class FormTextField extends StatelessWidget {
  const FormTextField({
    super.key,
    required this.myController,
  });

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    late String? countryCode;
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(radiusM))),
      width: designWith,
      height: 50.horizontalScale,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: paddingS),
            child: Icon(Icons.call),
          ),
          CountryListPick(
            onChanged: (CountryCode? code) {
              countryCode = code?.code;
            },
            theme: CountryTheme(
              isShowTitle: false,
              isShowCode: false,
              isDownIcon: false,
            ),
          ),
          Flexible(
              child: TextFormField(
            controller: myController,
            cursorColor: AppColor.lightText,
            textInputAction: TextInputAction.go,
            decoration: InputDecoration(
                hintText: AppLocalization.getLabels.phoneNumber),
          ))
        ],
      ),
    );
  }
}
