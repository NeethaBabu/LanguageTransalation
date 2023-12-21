import 'package:flutter_localization/flutter_localization.dart';

List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("de", LocaleData.DE),
  MapLocale("zh", LocaleData.ZH),
  // MapLocale("zh", LocaleData.ML),
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
  // static const Map<String,dynamic> ML={
  //   title: 'പ്രാദേശികവൽക്കരണം',
  //   body:'പ്രാദേശികവൽക്കരിച്ച ഫ്ലട്ടർ ആപ്ലിക്കേഷനിലേക്ക് സ്വാഗതം %a'
  // };
}