import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page_1/login_page_1.dart';
import 'package:login_page/pages/login_page_2/login_page_2.dart';
import 'package:login_page/routes/routes_utils.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.loginpage: (context) => const LoginPage(),
        Routes.loginpage2: (context) => const LoginPage2(),
      },
    );
  }
}
