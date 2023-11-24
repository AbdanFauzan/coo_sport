import 'dart:async';

import 'package:flutter/material.dart';
import 'package:coo_sport/loginpage.dart'; // Make sure to import the LoginPage widget from the correct location.

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key, required String title})
      : super(key: key); // Fix the constructor syntax.

  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 3);
    Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        // Replace this with the appropriate route or widget you want to navigate to.
        return LoginPage(
          showSignUpPage: () {},
          title: '',
        ); // Remove unnecessary comma.
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: const Color(0xFF019B83), // Set background color to #019B83
          borderRadius: const BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.shade200,
              offset: const Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/logowhite.png",
                height: 780.0,
                width: 780.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
