import 'package:flutter/material.dart';
import 'package:grocery_app/app/constants/app/app_constants.dart';
import 'package:grocery_app/app/constants/app/padding_and_radius_size.dart';
import 'package:grocery_app/app/extension/widget_scale_extension.dart';
import 'package:grocery_app/app/theme/colors.dart';
import 'package:grocery_app/core/i10n/i10n.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: Icon(Icons.search),
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(left: paddingS),
            child: TextFormField(
              cursorColor: AppColor.lightText,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                  hintText: AppLocalization.getLabels.searchAnything),
            ),
          ))
        ],
      ),
    );
  }
}
