import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  static String routeName = '/market';
  const MarketPage({super.key, required this.title});

  final String title;

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COO SPORT'),
      ),
      body: const Center(
        child: Text(
          'MarketPage',
        ),
      ),
    );
  }
}
