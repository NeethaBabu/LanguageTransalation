import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../localization/locales.dart';

class MultiLan extends StatefulWidget {
  const MultiLan({super.key});

  @override
  State<MultiLan> createState() => _MultiLanState();
}

class _MultiLanState extends State<MultiLan> {
  late FlutterLocalization _flutterLocalization;
  late String _currentLocale;

  final List<String> languages = ['English', 'German', 'Chinese','Malayalam','Tamil','Hindi'];
  String selectedLanguage = 'English';

  @override
  void initState() {
    _flutterLocalization = FlutterLocalization.instance;
    _currentLocale = _flutterLocalization.currentLocale!.languageCode;
    print(_currentLocale);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleData.title.getString(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Adjust the number of columns
              childAspectRatio: 3 / 2, // Adjust the aspect ratio of the cards
              children: languages.map((language) => Card(
                color: _currentLocale == languageToLocale(language) ? Colors.grey[300] : null,
                child: InkWell(
                  onTap: () {
                    _setLocale(languageToLocale(language));
                  },
                  child: Center(
                    child: Text(language,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              )).toList(),
            ),
          ),
          Container (
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Text(
              context.formatString(
                LocaleData.body,
                ["Neetha"],
              ),
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String languageToLocale(String language) {
    switch (language) {
      case 'English':
        return 'en';
      case 'German':
        return 'de';
      case 'Chinese':
        return 'zh';
      case 'Malayalam':
        return 'ml';
      case 'Tamil':
        return 'ta';
      case 'Hindi':
        return 'hi';
      default:
        return 'en';
    }
  }

  void _setLocale(String? value) {
    if (value == null) return;
    if (value == "en") {
      _flutterLocalization.translate("en");
    } else if (value == "de") {
      _flutterLocalization.translate("de");
    } else if (value == "zh") {
      _flutterLocalization.translate("zh");
    }
    else if(value == "ml"){
      _flutterLocalization.translate("ml");
    }
    else if(value == "ta"){
      _flutterLocalization.translate("ta");
    }
    else if(value == "hi"){
      _flutterLocalization.translate("hi");
    }
    else {
      return;
    }
    setState(() {
      _currentLocale = value;
    });
  }
}
