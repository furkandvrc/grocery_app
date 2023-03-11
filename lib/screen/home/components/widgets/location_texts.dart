import 'package:flutter/material.dart';
import 'package:grocery_app/app/constants/app/padding_and_radius_size.dart';
import 'package:grocery_app/core/i10n/i10n.dart';

import '../../../../app/theme/text_style.dart';

class LocationTexts extends StatelessWidget {
  const LocationTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: paddingXXXS),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalization.getLabels.yourLocation,
            style: s12W700(),
          ),
          Text(
            AppLocalization.getLabels.location,
            style: s14W700(),
          ),
        ],
      ),
    );
  }
}
