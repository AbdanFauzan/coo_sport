import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key, required this.title});

  final String title;

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COO SPORT'),
      ),
      body: Center(
        child: Text(
          'FavoritePage',
        ),
      ),
    );
  }
}
