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
  String get searchAnything => "Herhangi Bir Şey Ara";

  @override
  String get enterYourMobileNumber => "Telefon Numaranı Gir";

  @override
  String get enterVerificationNumber => "Doğrulama Kodunu Gir";

  @override
  String get subtextLoginScreen =>
      "Sizi doğrulamamız gerekiyor. Size tek seferlik bir doğrulama kodu göndereceğiz.";

  @override
  String get phoneNumber => "Telefon Numarası";

  @override
  String get next => "İleri";

  @override
  String get submit => "Gönder";

  @override
  String get finishGoodToGo => "Bitti, Hoşgeldiniz";
  
  @override
  String get weHaveSentSmsTo => "Şu numaraya SMS gönderdik:";
}
