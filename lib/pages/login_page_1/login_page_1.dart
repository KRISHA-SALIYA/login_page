import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/pages/login_page_1/login.dart';
import 'package:login_page/routes/routes_utils.dart';

import 'background.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          background(),
          login(size: size, context: context),
        ],
      ),
    );
  }
}
