import 'package:flutter/material.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
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

  static showAlertError(
      {required String title, required String body, required context}) {
    Alert(
      useRootNavigator: false,
      style: Styles.alert,
      context: context,
      type: AlertType.error,
      title: title,
      desc: body,
      buttons: [
        DialogButton(
          color: AppColors.accent,
          onPressed: () {
            Navigator.pop(context);
          },
          width: 120,
          child: const Text(
            "Ok",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ).show();
  }

  static showAlertInfo(
      {required String title, required String body, required context}) {
    Alert(
      useRootNavigator: false,
      style: Styles.alert,
      context: context,
      type: AlertType.success,
      title: title,
      desc: body,
      buttons: [
        DialogButton(
          color: AppColors.accent,
          onPressed: () {
            Navigator.pop(context);
          },
          width: 120,
          child: const Text(
            "Ok",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    ).show();
  }
}
