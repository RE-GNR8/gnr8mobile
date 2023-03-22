import 'package:flutter/material.dart';
import 'package:gnr8/mobpages/pages.dart';
import 'package:gnr8/utils/utils.dart';
import 'package:magic_sdk/magic_sdk.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool isLoggedIn = await Magic.instance.user.isLoggedIn();
      if (isLoggedIn) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext) => HomePage(),
          ),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screen.width,
        padding: EdgeInsets.all(40),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              height: 200,
              child: Image.asset("assets/images/logoSquar.png"),
            ),
            Spacer(),
            ElevatedButton(
                style: Styles.button,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Text(
                  'Login with Magic ✨',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            Spacer(),
            Text("In Partnership with:"),
            SizedBox(
              child: Image.asset("assets/images/topl.png"),
              width: 150,
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
