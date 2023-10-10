import 'package:coo_sport/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  final String title;

  const SignUpPage({
    Key? key,
    required this.showLoginPage,
    required this.title,
  }) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Text Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _phonenumberController = TextEditingController();

  bool _passwordError = false; // Added variable to track password error

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _phonenumberController.dispose();
    super.dispose();
  }

  Future<void> signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } else {
      setState(() {
        _passwordError = true; // Show password error message
      });
    }
  }

  bool passwordConfirmed() {
    return _passwordController.text.trim() == _confirmpasswordController.text.trim();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Center(
                child: Text(
                  "SIGN UP",
                  style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 1, 155, 131),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: screenHeight * 0.1,
                    left: 30,
                    right: 30,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: const BoxDecoration(),
                                child: TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Email',
                                    hintText: "Enter Email",
                                    hintStyle: const TextStyle(
                                      color: Color.fromRGBO(189, 189, 189, 1),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Password',
                                    hintText: "Enter password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                child: TextField(
                                  controller: _confirmpasswordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Confirm Password',
                                    hintText: "Enter password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                    errorText: _passwordError
                                        ? "Passwords do not match" // Show error message
                                        : null,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                child: TextField(
                                  controller: _phonenumberController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Phone Number',
                                    hintText: "Enter Phone Number",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: signUp,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 1, 155, 131),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Container(
                                  height: 60,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              signUpOption(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column signUpOption() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I am a member! ",
              style: TextStyle(color: Color.fromARGB(255, 105, 105, 105)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      showSignUpPage: () {},
                      title: '',
                    ),
                  ),
                );
              },
              child: const Text(
                "Login Now",
                style: TextStyle(
                  color: Color.fromARGB(255, 1, 155, 131),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
