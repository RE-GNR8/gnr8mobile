import 'package:flutter/material.dart';
import 'package:gnr8/services/magic/login.dart';

class WalletPage extends StatefulWidget {
  WalletPage({Key? key}) : super(key: key);


  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Wallet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            }, child: Text('Login with Magic ✨'))
          ],
        ),
      ),
    );
  }
}
