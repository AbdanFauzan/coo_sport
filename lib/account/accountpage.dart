import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coo_sport/account/additems.dart';
import 'package:coo_sport/account/editprofilepage.dart';
import 'package:coo_sport/account/itemtracking.dart';
import 'package:coo_sport/account/manageitem.dart';
import 'package:coo_sport/account/wallet.dart';
import 'package:coo_sport/utils/constants/image_strings.dart';
import 'package:coo_sport/utils/constants/text_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'addresspage.dart'; // Import your AddressPage here

class AccountPage extends StatefulWidget {
  static String routeName = '/account';

  const AccountPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final user = FirebaseAuth.instance.currentUser!;
  String username = '';
  String profileImageUrl = '';

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  void loadUserData() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      DocumentSnapshot<Map<String, dynamic>> userData = await FirebaseFirestore
          .instance
          .collection('Users')
          .doc(currentUser.uid)
          .get();

      if (userData.exists) {
        setState(() {
          username = userData['username'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: profileImageUrl.isNotEmpty
                      ? Image.network(profileImageUrl)
                      : Image.asset(tProfileImage),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  tProfileHeading,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                child: Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 230,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EditProfilePage(title: widget.title);
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 155, 131),
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              menuButton(LineAwesomeIcons.address_card, tMenu1, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AddressPage(); // Navigate to AddressPage
                    },
                  ),
                );
              }),
              menuButton(LineAwesomeIcons.wallet, tMenu2, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const YourWallet();
                }));
              }),
              menuButton(LineAwesomeIcons.plus_square, tMenu3, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AddItems();
                }));
              }),
              menuButton(LineAwesomeIcons.clipboard_list, tMenu4, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ManageItem();
                }));
              }),
              menuButton(LineAwesomeIcons.map_marked, tMenu6, () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ItemTracking();
                }));
              }),
              menuButton(LineAwesomeIcons.alternate_sign_out, tMenu5, () {
                _signOut(context);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuButton(IconData icon, String title, Function() onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black.withOpacity(0.1),
                ),
                child:
                    Icon(icon, color: const Color.fromARGB(255, 1, 155, 131)),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: const Icon(LineAwesomeIcons.angle_right,
                    size: 20, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacementNamed('/');
    } catch (e) {
      print('Error signing out: $e');
    }
  }
}
