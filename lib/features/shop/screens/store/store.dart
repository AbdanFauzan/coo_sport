import 'package:coo_sport/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  static String routeName = '/market';
  const StoreScreen({super.key, required this.title});

  final String title;

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
          // title: Text('Store' , style: Theme.of(context).textTheme.headlineMedium),
          // actions: [
          //   // TCartCounterIcon (onPressed : (){}),
          // ],
          ),
    );
  }
}
