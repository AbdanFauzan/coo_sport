import 'package:coo_sport/common/styles/widgets/appbar/appbar.dart';
import 'package:coo_sport/common/styles/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                TAppBar(
                    title: Column(
                  children: [],
                )),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
