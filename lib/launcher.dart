import 'dart:async';
import 'package:coo_sport/loginpage.dart';
import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({Key? key, required String title}) : super(key: key);

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
        return LoginPage(
          showSignUpPage: () {},
          title: '',
        );
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Wrap your content with SingleChildScrollView
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: const Color(0xFF019B83),
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
      ),
    );
  }
}
