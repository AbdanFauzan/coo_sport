import 'package:coo_sport/launcher.dart';
import 'package:coo_sport/size_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coo Sport',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 152)),
        useMaterial3: true,
      ),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator().generateRoute,
      home: const LauncherPage(),
      // initialRoute: HomePage.routeName,
      // routes: routes,
    );
  }
}
