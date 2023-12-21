import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../localization/locales.dart';
import 'navdrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
      title: Text(
          LocaleData.title.getString(context),
        ),

      ),
      body: Container(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
          child:
          // Text("hey all",
          Text(context.formatString(LocaleData.body, ["Neetha"],),
            style: TextStyle(
              color: Colors.purple,
              fontSize:20,
            ),
          ),
      ),
    );
  }


}



