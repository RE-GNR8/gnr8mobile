import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  //* Variables and Services

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            "Settings",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              onTap: () async {},
              leading: Icon(FontAwesomeIcons.userLarge),
              title: Text("Profile"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () async {},
              leading: Icon(FontAwesomeIcons.wallet),
              title: Text("Connect Wallet"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () async {},
              leading: Icon(FontAwesomeIcons.rightFromBracket),
              title: Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
