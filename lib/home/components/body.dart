import 'package:coo_sport/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inisialisasi SizeConfig
    SizeConfig().init(context);

    return SafeArea(
      child: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     Padding(
        //       padding: EdgeInsets.symmetric(
        //         horizontal: getProportionateScreenWidth(20)),
        //       child: Row(
        //         children: [
        //           Container(
        //             width: SizeConfig.getProportionateScreenWidth(300), // Contoh penggunaan
        //             height: 50,
        //             decoration:BoxDecoration(
        //               color: kSecondaryColor.withOpacity(0.1),
        //               borderRadius: BorderRadius.circular(15),
        //             ) ,
        //             child: const TextField(
        //               decoration: InputDecoration(
        //                 enabledBorder: InputBorder.none,
        //               ),
        //               ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
