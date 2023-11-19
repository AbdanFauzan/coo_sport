import 'package:coo_sport/loginpage.dart';
import 'package:coo_sport/signuppage.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  
  // initially, show the login page
  bool showLoginPage = true;

  void toggleScreens(){
    setState(() {
      showLoginPage=!showLoginPage;
    });
  }
  
  get showSignUpPage => null;
  @override
  Widget build(BuildContext context) {
      if (showLoginPage){
        return LoginPage (showSignUpPage : toggleScreens, title: '',);
      } else{
        return SignUpPage (showLoginPage: toggleScreens, title: '',);
      }
  }
}