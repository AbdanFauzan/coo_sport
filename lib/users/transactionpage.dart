import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key, required this.title});

  final String title;

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COO SPORT'),
      ),
      body: Center(
        child: Text(
          'TransactionPage',
        ),
      ),
    );
  }
}
