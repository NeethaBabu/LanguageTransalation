import 'package:flutter/material.dart';
import 'package:flutter_languagetrans/localization/locales.dart';
import 'package:flutter_languagetrans/pages/homepage.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    configureLocalization();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MultiLanguage',
      supportedLocales: localization.supportedLocales,
      localizationsDelegates: localization.localizationsDelegates,
      home: HomePage(),
    );
  }

  void configureLocalization() {
    localization.init(mapLocales: LOCALES, initLanguageCode: "zh");
    localization.onTranslatedLanguage = onTranslatedLanguage;
  }
  void onTranslatedLanguage(Locale?locale){
    setState(() {

    });
  }
}


