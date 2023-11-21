import 'package:coo_sport/account/accountpage.dart';
import 'package:coo_sport/home/home.dart';
import 'package:coo_sport/home/store.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Add this line
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final user = FirebaseAuth.instance.currentUser!;
  int _bottomCurrentIndex = 0;
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
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
}
