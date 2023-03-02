import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tools {
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static launchWeb(String url) async {
    final Uri uri = Uri.parse(url);
    launchUrl(uri);
  }
}
