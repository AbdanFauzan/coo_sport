import 'package:flutter/material.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
