import 'package:flutter/material.dart';

class ManageItem extends StatefulWidget {
  const ManageItem({super.key});

  @override
  State<ManageItem> createState() => _ManageItemState();
}

class _ManageItemState extends State<ManageItem> {
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
        child: Center(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              const SizedBox(height:20),
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
                    hintText: "Search Item"
                  ),
                )
              )
            ]),
        ),
      )
    );
  }
}