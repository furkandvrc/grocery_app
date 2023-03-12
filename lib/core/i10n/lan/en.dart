import '../default_localization.dart';

class EnLocalization extends AppLocalizationLabel {
  const EnLocalization();

  @override
  final String lanCode = 'en';
  @override
  final String localizationTitle = 'America';

  @override
  String get checkYourInternetConnection =>
      "Please Check Your Internet Connection";

  @override
  String get tryAgain => "Try Again";

  @override
  String get defaultError => 'Somenting Went Wrong. Please Try Again Later';

  @override
  String get ok => "Ok";

  @override
  String get yourLocation => "Your Location";

  @override
  String get location => "32 Llanberis Close, Tonteg, CF38 1HR";

  @override
  String get searchAnything => "Search Anything";

  @override
  String get enterYourMobileNumber => "Enter your mobile number";

  @override
  String get subtextLoginScreen =>
      "We need to verify you. We will send you a one time verification code.";

  @override
  String get phoneNumber => "Phone Number";

  @override
  String get next => "Next";

  @override
  String get submit => "Submit";

  @override
  String get finishGoodToGo => "Finish, Good to go";
}
