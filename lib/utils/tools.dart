import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
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

  static IconData getDocType(String type) {
    switch (type) {
      case "pdf":
        return FontAwesomeIcons.filePdf;

      case "word":
        return FontAwesomeIcons.fileWord;

      case "webpage":
        return FontAwesomeIcons.link;

      default:
        return FontAwesomeIcons.file;
    }
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

  static int calculatePercentage(double fundsRaised, double totalCost) {
    if (totalCost == 0) {
      throw ArgumentError("Total cost cannot be zero.");
    }

    int percentage = ((fundsRaised / totalCost) * 100).floor();
    return percentage;
  }

  static String formatAsUSD(double amount) {
    final currencyFormatter = NumberFormat.currency(
      symbol: '\$', // USD symbol
      decimalDigits: 0, // Display 2 decimal places
      locale: 'en_US', // Use the US locale for formatting
    );
    return currencyFormatter.format(amount);
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
