import 'package:coo_sport/account/accountpage.dart';
import 'package:coo_sport/features/shop/screens/home/home.dart';
import 'package:coo_sport/features/shop/screens/store/store.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final user = FirebaseAuth.instance.currentUser!;

  int _bottomCurrentIndex = 0;
  final List<Widget> _container = [
    const HomeScreen(
      title: '',
    ),
    const StoreScreen(
      title: '',
    ),
    const AccountPage(
      title: '',
    ),
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
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.shop),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.user),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
