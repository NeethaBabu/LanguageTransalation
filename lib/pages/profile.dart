import 'package:flutter/cupertino.dart'; 
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page"),),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 150,vertical: 50),
            height: 50,
            width: 50,
            child: CircleAvatar(child: Image.asset("assets/images/toothless.png"),
              ),
          ),
          Container(
            height: 150,
            width: 250,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Name:"),
                  ],
                ),
                Row(
              children: [
                Text("Age:"),
              ],
            ),
                Row(
                  children: [
                    Text("Address:"),
                  ],
                ),
              ],
    ),
          )
        ],
      ),

    );
  }
}
