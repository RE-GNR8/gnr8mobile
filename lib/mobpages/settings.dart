import 'package:flutter/material.dart';
import 'package:gnr8/services/services.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  //* Variables and Services

  Wallet _wallet = Wallet();

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
              onTap: () {
                _wallet.mintClaim();
              },
              leading: ImageIcon(
                AssetImage("assets/images/walletconnect.png"),
              ),
              title: Text("Wallet Connect"),
            ),
          ),
        ],
      ),
    );
  }
}
