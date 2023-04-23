import 'package:flutter/material.dart' show ValueNotifier, Locale;
import 'package:grocery_app/core/i10n/lan/en.dart';
import '../../app/constants/enum/cache_key_enum.dart';
import '../../app/libs/locale_manager/locale_manager.dart';
import 'lan/tr.dart';

const kDefaultLocal = Locale('tr');

const Map<String, AppLocalizationLabel> supportedLocalization = {
  'tr': TrLocalization(),
  "en": EnLocalization(),
};

List<Locale> get getSupportedLocalList => List.generate(
      supportedLocalization.length,
      (index) => Locale(
        supportedLocalization.keys.elementAt(index),
      ),
    );

final ValueNotifier<Locale> localeValueNotifier =
    ValueNotifier(_getDefaultKeyFromCache);

Locale get _getDefaultKeyFromCache {
  final lan = Locale(
    LocaleManager.instance.getStringValue(CacheKey.languageCode) ??
        kDefaultLocal.languageCode,
  );
  return lan;
}

abstract class AppLocalizationLabel {
  const AppLocalizationLabel();

  String get localizationTitle;

  String get lanCode;

  String get checkYourInternetConnection;

  String get tryAgain;

  String get defaultError;

  String get ok;

  String get yourLocation;

  String get location;

  String get searchAnything;

  String get enterYourMobileNumber;

  String get enterVerificationNumber;

  String get subtextLoginScreen;

  String get phoneNumber;

  String get next;

  String get submit;

  String get finishGoodToGo;

  String get weHaveSentSmsTo;

  String get trOrEng;
}
