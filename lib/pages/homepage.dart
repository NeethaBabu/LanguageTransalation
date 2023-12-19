import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../localization/locales.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FlutterLocalization _flutterLocalization;

  late String _currentLocale;
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
        actions: [
          DropdownButton(
            value: _currentLocale,
              items: const [
            DropdownMenuItem(
              value: "en",
              child: Text("English"),
            ),
            DropdownMenuItem(
              value: "de",
              child: Text("German"),
            ),
            DropdownMenuItem(
              value: "zh",
              child: Text("Chinese"),
            )
          ], onChanged: (value){
              _setLocale(value);
          }
          )
        ],
      ),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
          child: Text(context.formatString(LocaleData.body, ["NEETHA"],),
            style: TextStyle(
              color: Colors.purple,
              fontSize:20,
            ),
          ),
      ),
    );
  }
  void _setLocale(String? value) {
    if(value == null) return;
    if(value == "en"){
      _flutterLocalization.translate("en");
    } else if(value == "de"){
      _flutterLocalization.translate("de");
    }else if(value == "zh"){
      _flutterLocalization.translate("zh");
    } else{
      return;
    }
    setState(() {
      _currentLocale = value;
    });
  }
}


