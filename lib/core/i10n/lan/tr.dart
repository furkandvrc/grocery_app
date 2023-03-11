import '../default_localization.dart';

class TrLocalization extends AppLocalizationLabel {
  const TrLocalization();

  @override
  final String lanCode = 'tr';
  @override
  final String localizationTitle = 'Türkçe';

  @override
  String get checkYourInternetConnection =>
      "Lütfen internet bağlantınızı kontrol edin.";

  @override
  String get tryAgain => "Tekrar Dene";

  @override
  String get defaultError =>
      'Bir hata oluştu. Lütfen daha sonra tekrar deneyin.';

  @override
  String get ok => "Tamam";

  @override
  String get yourLocation => "Konumun";

  @override
  String get location => "Sarıkanarya sokak,Kadıköy,İstanbul/Türkiye";

  @override
  String get groceryPlus => "Grocery Plus";

  @override
  String get searchAnything => "Herhangi Bir Şey Ara";
}
