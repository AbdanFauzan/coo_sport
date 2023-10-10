import 'package:coo_sport/constants/image_strings.dart';
import 'package:coo_sport/constants/text_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AccountPage extends StatefulWidget {
  static String routeName = '/account';
  const AccountPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final user = FirebaseAuth.instance.currentUser!;

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
                  child: Image.asset(tProfileImage),
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
                  tProfileSubHeading + (user.email ?? ''),
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 230,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 155, 131),
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(tEditProfile, style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white)),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              // MENU
              menuButton(LineAwesomeIcons.address_card, tMenu1),
              menuButton(LineAwesomeIcons.wallet, tMenu2),
              menuButton(LineAwesomeIcons.plus_square, tMenu3),
              menuButton(LineAwesomeIcons.clipboard_list, tMenu4),
              menuButton(LineAwesomeIcons.map_marked, tMenu6),
              menuButton(LineAwesomeIcons.alternate_sign_out, tMenu5),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuButton(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (title == tMenu5) {
            // Sign out the user and navigate to the login page
            _signOut(context);
          } else {
            // Handle other menu items here
          }
        },
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
                child: Icon(icon, color: const Color.fromARGB(255, 1, 155, 131)),
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
                child: const Icon(LineAwesomeIcons.angle_right, size: 20, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to sign out the user
  void _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacementNamed('/');
    } catch (e) {
      print('Error signing out: $e');
    }
  }
}
