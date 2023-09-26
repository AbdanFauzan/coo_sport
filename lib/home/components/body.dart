import 'package:coo_sport/constans.dart';
import 'package:coo_sport/home/components/icon_btn_with_counter.dart';
import 'package:flutter/material.dart';
import 'package:coo_sport/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inisialisasi SizeConfig
    SizeConfig().init(context);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.getProportionateScreenWidth(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.getProportionateScreenWidth(20),
                vertical: SizeConfig.getProportionateScreenWidth(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.getProportionateScreenWidth(200),
                    height: SizeConfig.getProportionateScreenHeight(50),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        // search value
                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Product",
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal:
                              SizeConfig.getProportionateScreenWidth(20),
                          vertical: SizeConfig.getProportionateScreenWidth(9),
                        ),
                      ),
                    ),
                  ),
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Cart Icon.svg",
                    numOfItems: 3,
                    press: () {},
                  ),
                  IconBtnWithCounter(
                    svgSrc: "assets/icons/Bell.svg",
                    numOfItems: 3, // Mengganti num0fItems menjadi numOfItems
                    press: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
