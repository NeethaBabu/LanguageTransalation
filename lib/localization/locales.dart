import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> LOCALES = [
  const MapLocale("en", LocaleData.EN),
  const MapLocale("de", LocaleData.DE),
  const MapLocale("zh", LocaleData.ZH),
  const MapLocale("ml", LocaleData.ML),
  const MapLocale("ta", LocaleData.TA),
  const MapLocale("hi", LocaleData.HI),
];
mixin LocaleData{
  static const String title = 'title';
  static const String body = 'body';

  static const Map<String,dynamic> EN={
    title: 'Localization',
    body:'Welcome to localized flutter application %a'
  };
  static const Map<String,dynamic> DE={
    title: 'Lokalisierung',
    body:'Willkommen bei der lokalisierten Flatteranwendung %a'
  };
  static const Map<String,dynamic> ZH={
    title: '本土化',
    body:'欢迎使用本地化的 flutter 应用 %a'
  };
  static const Map<String,dynamic> ML={
    title: 'പ്രാദേശികവൽക്കരണം',
    body:'പ്രാദേശികവൽക്കരിച്ച ഫ്ലട്ടർ ആപ്ലിക്കേഷനിലേക്ക് സ്വാഗതം %a'
  };
  static const Map<String,dynamic> TA={
    title: 'உள்ளூர்மயமாக்கல்',
    body:'உள்ளூர் ஃப்ளட்டர் பயன்பாட்டிற்கு வரவேற்கிறோம் %a'
  };
  static const Map<String,dynamic> HI={
    title: 'स्थानीयकरण',
    body:'स्थानीयकृत स्पंदन एप्लिकेशन में आपका स्वागत है %a'
  };
}