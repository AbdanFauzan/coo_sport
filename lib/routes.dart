import 'package:coo_sport/account/accountpage.dart';
import 'package:coo_sport/account/editprofilepage.dart';
import 'package:coo_sport/home/homepage.dart';
import "package:flutter/material.dart";

final Map<String, WidgetBuilder> routes = {
  AccountPage.routeName: (context) => const AccountPage(
        title: '',
      ),
  HomePage.routeName: (context) => const HomePage(
        title: '',
      ),
  EditProfilePage.routeName: (context) => const EditProfilePage(title: ''),
};
