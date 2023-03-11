import 'package:flutter/material.dart';
import '../navigation/screens.dart';
import 'colors.dart';

TextStyle s12W700() => Theme.of(Screens.context)
    .textTheme
    .displayLarge!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s12W500() => Theme.of(Screens.context)
    .textTheme
    .displayLarge!
    .copyWith(fontWeight: FontWeight.bold, color: AppColor.lightText);

TextStyle s14W700() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s15W700() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s14W500() => Theme.of(Screens.context)
    .textTheme
    .titleMedium!
    .copyWith(fontWeight: FontWeight.w500, color: AppColor.lightText);

TextStyle s16W700() => Theme.of(Screens.context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s16W500() => Theme.of(Screens.context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.w500, color: AppColor.lightText);

TextStyle s16W600() => Theme.of(Screens.context)
    .textTheme
    .bodyLarge!
    .copyWith(fontWeight: FontWeight.w600, color: AppColor.lightText);

TextStyle s18W700() => Theme.of(Screens.context)
    .textTheme
    .displaySmall!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s18W500() => Theme.of(Screens.context)
    .textTheme
    .displaySmall!
    .copyWith(fontWeight: FontWeight.w500, color: AppColor.lightText);

TextStyle s20W700() => Theme.of(Screens.context)
    .textTheme
    .headlineSmall!
    .copyWith(fontWeight: FontWeight.w700, color: AppColor.lightText);

TextStyle s26W700() => Theme.of(Screens.context)
    .textTheme
    .titleLarge!
    .copyWith(fontWeight: FontWeight.bold, color: AppColor.lightText);

TextStyle s20W900() => Theme.of(Screens.context)
    .textTheme
    .headlineSmall!
    .copyWith(fontWeight: FontWeight.bold, color: AppColor.lightText,);
