import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key, required this.title});

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COO SPORT'),
      ),
      body: Center(
        child: Text(
          'AccountPage',
        ),
      ),
    );
  }
}
