import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:gnr8/services/services.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:gnr8/webpages/webpages.dart';
import 'package:magic_sdk/magic_sdk.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
  Magic.instance = Magic("pk_live_EBE6D9D4806EDCEF");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(children: [
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'GNR8',
          theme: gnr8theme,
          home: !kIsWeb
              ? HomePage()
              : ProjectWebPage(
            project: projects[0],
          ),
        ),
        Magic.instance.relayer
      ],)
    );
  }
}
