import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/home';
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
