import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:gnr8/webpages/webpages.dart';
import 'package:magic_sdk/magic_sdk.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
  if (!kIsWeb) {
    Magic.instance = Magic("pk_live_EBE6D9D4806EDCEF");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'GNR8',
            theme: gnr8theme,
            home: !kIsWeb ? SplashPage() : WebHome(),
          ),
          !kIsWeb ? Magic.instance.relayer : SizedBox()
        ],
      ),
    );
  }
}
