import 'package:coo_sport/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../features/shop/controllers/cart_controller.dart';
import '../../../../features/shop/screens/cart/cart.dart';
import '../../../../utils/constants/colors.dart';

/// Custom widget for the cart counter icon
class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    this.iconColor, // Customize icon color
    this.counterBgColor, // Customize counter background color
    this.counterTextColor, // Customize counter text color
  });

  final Color? iconColor, counterBgColor, counterTextColor;

  @override
  Widget build(BuildContext context) {
    // Get an instance of the CartController
    final controller = CartController.instance;

    // Check if the app is in dark mode

    return Stack(
      children: [
        // IconButton for navigating to the CartScreen
        IconButton(
          onPressed: () => Get.to(() => const CartScreen(title: '',)),
          icon: Icon(Iconsax.shopping_bag, color: iconColor),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: TSizes.fontSizeLg,
            height: TSizes.fontSizeLg,
            decoration: BoxDecoration(
              color: counterBgColor ?? ( TColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Obx(
                () => Text(
                  controller.calculateTotalCartItems(),
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: counterTextColor ?? (TColors.white),
                        fontSizeFactor: 0.8,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}