import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  static String routeName = '/account';
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
        title: const Text('COO SPORT'),
      ),
      body: const Center(
        child: Text(
          'AccountPage',
        ),
      ),
    );
  }
}
