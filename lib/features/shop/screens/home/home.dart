import 'package:coo_sport/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:coo_sport/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:coo_sport/common/widgets/texts/section_heading.dart';
import 'package:coo_sport/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:coo_sport/features/shop/screens/home/widgets/home_categories.dart';
import 'package:coo_sport/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:coo_sport/utils/constants/image_strings.dart';
import 'package:coo_sport/utils/constants/sizes.dart';
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
                  // AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // SearchBar
                  TSearchContainer(text: 'Search Here'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),
                        SizedBox(height: TSizes.spaceBtwItems),

                        // Categories
                        THomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(
                banners: [
                  TImages.banner3,
                  TImages.banner2,
                  TImages.banner1,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
