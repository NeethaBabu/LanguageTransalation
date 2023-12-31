import 'package:flutter/material.dart';
import 'package:flutter_languagetrans/pages/multilanguage.dart';
import 'package:flutter_languagetrans/pages/profile.dart';
import 'package:flutter_languagetrans/pages/welcome.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const WelcomePage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Profile(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Change Language'),
            onTap: () =>  Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MultiLan(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}