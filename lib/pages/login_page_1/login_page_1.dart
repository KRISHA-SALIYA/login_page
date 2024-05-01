import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/routes/routes_utils.dart';

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
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/236x/4d/e5/e9/4de5e9c1ec5ad83e02fa890ccfcc5fb8.jpg",
                ),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Text(
                    "FIND",
                    style: GoogleFonts.daiBannaSil(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.62,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Align(
                      alignment: const Alignment(0, 0.6),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.loginpage2);
                        },
                        child: Container(
                          height: 50,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text("LogIn"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Align(
                      alignment: const Alignment(0, 0.75),
                      child: Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text("Don't have an account? SignUp"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
