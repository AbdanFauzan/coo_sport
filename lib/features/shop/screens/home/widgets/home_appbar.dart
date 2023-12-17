import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coo_sport/features/shop/controllers/brand_controller.dart';
import 'package:coo_sport/features/shop/controllers/cart_controller.dart';
import 'package:coo_sport/features/shop/controllers/categories_controller.dart';
import 'package:coo_sport/features/shop/controllers/checkout_controller.dart';
import 'package:coo_sport/features/shop/controllers/product_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../account/accountpage.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class THomeAppBar extends StatefulWidget {
  const THomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _THomeAppBarState createState() => _THomeAppBarState();
}

class _THomeAppBarState extends State<THomeAppBar> {
  String homeAppbarSubTitle = '';

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentSnapshot<Map<String, dynamic>> userData = await FirebaseFirestore
          .instance
          .collection('Users')
          .doc(currentUser.uid)
          .get();

      if (userData.exists) {
        setState(() {
          homeAppbarSubTitle = userData['username'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    Get.put(CategoryController());
    Get.put(ProductController());
    Get.put(BrandController());
    Get.put(CheckoutController());

    return TAppBar(
      title: GestureDetector(
        onTap: () => Get.to(() => const AccountPage(title: '')),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey),
            ),
            Text(
              homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white),
            ),
          ],
        ),
      ),
      actions: const [
        TCartCounterIcon(
          iconColor: TColors.white,
          counterBgColor: TColors.black,
          counterTextColor: TColors.white,
        ),
      ],
    );
  }
}
