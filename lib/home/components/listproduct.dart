import 'package:coo_sport/size_config.dart';
import 'package:flutter/material.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  Widget _buildFeaturedProduct(
      {required String name, required double price, required String image}) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 180,
            width: 170,
            child: Column(
              children: <Widget>[
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/$image"),
                    ),
                  ),
                ),
                Text(
                  "\$ $price",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff9b96d6)),
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.search, color: Colors.black),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.notifications_none, color: Colors.black),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.getProportionateScreenWidth(20),
        ),
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.getProportionateScreenWidth(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Featured",
                        style: TextStyle(
                          fontSize: SizeConfig.getProportionateScreenWidth(17),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: SizeConfig.getProportionateScreenWidth(17),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 600,
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 6,
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      _buildFeaturedProduct(
                        image: "ball.png",
                        price: 55.000,
                        name: "Mikasa Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "basket.png",
                        price: 55.000,
                        name: "Basket Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "ball.png",
                        price: 55.000,
                        name: "Mikasa Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "ball.png",
                        price: 55.000,
                        name: "Mikasa Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "basket.png",
                        price: 55.000,
                        name: "Basket Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "ball.png",
                        price: 55.000,
                        name: "Mikasa Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "ball.png",
                        price: 55.000,
                        name: "Mikasa Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "basket.png",
                        price: 55.000,
                        name: "Basket Ball",
                      ),
                      _buildFeaturedProduct(
                        image: "ball.png",
                        price: 55.000,
                        name: "Mikasa Ball",
                      ),
                    ],
                  ),
                )

                // Tambahkan produk lainnya di sini, contoh:
                // ProductWidget(title: "Product 1", price: 10.0),
                // ProductWidget(title: "Product 2", price: 15.0),
                // ...
              ],
            ),
          ],
        ),
      ),
    );
  }
}
