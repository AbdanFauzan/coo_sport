import 'package:coo_sport/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:coo_sport/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/shop/controllers/cart_controller.dart';

class ManageItem extends StatefulWidget {
  const ManageItem({Key? key}) : super(key: key);

  @override
  State<ManageItem> createState() => _ManageItemState();
}

class _ManageItemState extends State<ManageItem> {
  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF019B83)),
        title: const Padding(
          padding: EdgeInsets.only(left: 57, top: 0, right: 7),
          child: Text(
            'Manage Items',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 247, 247, 247),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search Item",
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),

              /// -- Items in Cart
              child: TCartItems(),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(TSizes.defaultSpace),
      //   child: SizedBox(
      //     width: double.infinity,
      //     child: ElevatedButton(
      //       onPressed: () => Get.to(() => const CheckoutScreen()),
      //       child: Obx(() => Text('Checkout ${controller.totalCartPrice.value}')),
      //     ),
      //   ),
      // ),
    );
  }
}
