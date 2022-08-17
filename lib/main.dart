import 'package:flutter/material.dart';
import 'package:shoishob/Screens/welcome_page.dart';
import 'package:shoishob/Screens/login_page.dart';
import 'package:shoishob/Screens/signup_page.dart';
import 'package:shoishob/Screens/home.dart';
import 'package:shoishob/Screens/sports_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoishob',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/sports_page',
      routes: {
        '/': (context) => const WelcomePage(),
        '/logIn_page': (context) => const LogInPage(),
        '/singUp_page': (context) => const SignUpPage(),
        '/home': (context) => const Home(),
        '/sports_page': (context) => const SportsPage(),
      },
    );
  }
}

