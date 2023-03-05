import 'package:flutter/material.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:magic_sdk/magic_sdk.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  //* Variables and Services
  final magic = Magic.instance;

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            "Wallet",
            style: theme.labelMedium,
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: ListTile(
              onTap: () async {
                await magic.user.logout();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SplashPage()));
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
            ),
          ),
        ],
      ),
    );
  }
}
