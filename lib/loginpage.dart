import 'package:coo_sport/forgotpasswordpage.dart';
import 'package:coo_sport/navigation_menu.dart';
import 'package:coo_sport/signuppage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showSignUpPage;
  const LoginPage(
      {Key? key, required this.showSignUpPage, required String title})
      : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Text Controller

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future SignIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // If login is successful, navigate to the landing page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const NavigationMenu(
            title: '',
          ),
        ),
      );
    } catch (e) {
      print("Authentication error: $e");
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
            SizedBox(
              height: screenHeight,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    height: screenHeight * 0.7,
                    width: screenWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/atas.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.4,
                    height: screenHeight * 0.6,
                    width: screenWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/bawah.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * -0.03,
                    height: screenHeight,
                    width: screenWidth,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/logo2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.5,
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
                                  controller:
                                      _emailController, // Assign controller
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Email',
                                    hintText: "Masukkan Email",
                                    hintStyle: const TextStyle(
                                        color:
                                            Color.fromRGBO(189, 189, 189, 1)),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                child: TextField(
                                  controller:
                                      _passwordController, // Assign controller
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    labelText: 'Password',
                                    hintText: "Masukkan password",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: SignIn,
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
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
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
              "Don't have an account?",
              style: TextStyle(color: Color.fromARGB(255, 105, 105, 105)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(
                      showLoginPage: () {},
                      title: '',
                    ),
                  ),
                );
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Color.fromARGB(255, 1, 155, 131),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ForgotPasswordPage();
              },
            ));
          },
          child: const Text(
            'Reset/Forgot Password ?',
            style: TextStyle(
                color: Color.fromRGBO(0, 80, 253, 1),
                fontWeight: FontWeight.bold),
          ),
        ),

        // const SizedBox(height: 1),
        // Align(
        //   alignment: Alignment.center,
        //   child: TextButton(
        //     onPressed: () {
        //     }
        //   ),
        // ),
      ],
    );
  }
}
