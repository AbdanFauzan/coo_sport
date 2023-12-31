import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postcodeController = TextEditingController();

  String? selectedCountry; // Initially selected country code
  List<String> countries = [
    'Indonesia',
    'Malaysia',
    'Singapura',
    'India',
    'Laos',
    'Thailand',
    'Vietnam',
    'Timor Leste',
    'Jepang',
    'Korea Selatan',
    'Filipina',
    'Kamboja',
    'Brunei',
    'India',
    'Myanmar',
    'Palestine',
  ];

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF019B83)),
        title: const Padding(
          padding: EdgeInsets.only(left: 90, top: 0, right: 7),
          child: Text(
            'Address',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: streetAddressController,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 10),
                    labelText: 'Street Address',
                    hintText: 'Enter Street Address',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: cityController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'City',
                          hintText: 'Enter City',
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DropdownButtonFormField<String>(
                  value: selectedCountry,
                  items: countries.map((String country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Country',
                    hintText: 'Select Country',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: postcodeController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Zip/Postcode',
                    hintText: 'Enter Zip/Postcode',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Implement your button logic here
                    // You can access form fields like streetAddressController.text, phoneNumberController.text, postcodeController.text, and selectedCountry

                    // Save data to Firestore
                    saveDataToFirestore();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 155, 131),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    child: const Text(
                      "Confirm",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void saveDataToFirestore() async {
    try {
      User? user = auth.currentUser;
      if (user != null) {
        String userId = user.uid;

        // Create a reference to the user's document
        DocumentReference userDoc = firestore.collection('users').doc(userId);

        // Save data to Firestore
        await userDoc.set({
          'streetAddress': streetAddressController.text,
          'city': cityController.text,
          'country': selectedCountry,
          'postcode': postcodeController.text,
        });

        // Show a success message
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Address saved to Firestore.'),
          ),
        );
      }
    } catch (error) {
      print('Error saving data to Firestore: $error');
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error saving address. Please try again.'),
        ),
      );
    }
  }
}
