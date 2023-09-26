import 'package:coo_sport/constans.dart';
import 'package:coo_sport/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    required this.numOfItems, // Mengganti num0fItems menjadi numOfItems
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems; // Mengganti num0fItems menjadi numOfItems
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(SizeConfig.getProportionateScreenWidth(12)),
            height: SizeConfig.getProportionateScreenWidth(46),
            width: SizeConfig.getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: -3,
              child: Container(
                height: SizeConfig.getProportionateScreenWidth(16),
                width: SizeConfig.getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    "$numOfItems", // Mengganti num0fItems menjadi numOfItems
                    style: TextStyle(
                      fontSize: SizeConfig.getProportionateScreenWidth(10),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
