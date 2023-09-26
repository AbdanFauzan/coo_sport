import 'package:coo_sport/home/accountpage.dart';
import 'package:coo_sport/home/homepage.dart';
import 'package:coo_sport/home/marketpage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomCurrentIndex = 0;
  final List<Widget> _container = [
    const HomePage(title: '',),
    const MarketPage(title: '',),
    const AccountPage(title: '',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomCurrentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomCurrentIndex,
        onTap: (int index) {
          setState(() {
            _bottomCurrentIndex = index; // Update the selected index
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
