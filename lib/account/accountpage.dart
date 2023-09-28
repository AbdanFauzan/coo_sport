import 'package:coo_sport/constants/image_strings.dart';
import 'package:coo_sport/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AccountPage extends StatefulWidget {
  static String routeName = '/account';
  const AccountPage({super.key, required this.title});

  final String title;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true, // Center the title
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage(tProfileImage)),
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
              const Center(
                child: Text(
                  tProfileSubHeading,
                  style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.all(8.0), // Add padding here
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.cog, color: Color.fromARGB(255, 1, 155, 131)),
                  ),
                  title: Text(tMenu1, style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container (
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.angle_right, size: 20, color: Colors.grey)
                  ),
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(8.0), // Add padding here
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.wallet, color: Color.fromARGB(255, 1, 155, 131)),
                  ),
                  title: Text(tMenu2, style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container (
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.angle_right, size: 20, color: Colors.grey)
                  ),
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(8.0), // Add padding here
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.plus_square, color: Color.fromARGB(255, 1, 155, 131)),
                  ),
                  title: Text(tMenu3, style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container (
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.angle_right, size: 20, color: Colors.grey)
                  ),
                ),
              ),
                Padding(
                padding: const EdgeInsets.all(8.0), // Add padding here
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.clipboard_list, color: Color.fromARGB(255, 1, 155, 131)),
                  ),
                  title: Text(tMenu4, style: Theme.of(context).textTheme.bodyMedium,),
                  trailing: Container (
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: const Icon(LineAwesomeIcons.angle_right, size: 20, color: Colors.grey)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
