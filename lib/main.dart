import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:gnr8/webpages/webpages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: gnr8theme,
      debugShowCheckedModeBanner: false,
      home: !kIsWeb ? HomePage() : WebHome(),
    );
  }
}
