import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gnr8/firebase_options.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:gnr8/webpages/webpages.dart';

import 'services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: gnr8theme,
      debugShowCheckedModeBanner: false,
      home: !kIsWeb ? HomePage() : ProjectWebPage(project: projects[1]),
    );
  }
}
