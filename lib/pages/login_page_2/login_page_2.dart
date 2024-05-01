import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/routes_utils.dart';

// class SharedPrefService {
//   Future writeCache({required String key, required String value}) async {
//     final  pref = await SharedPreferences.getInstance();
//
//     bool isSaved = await pref.setString(key, value);
//
//     debugPrint(isSaved.toString());
//   }
// }

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  // SharedPreferences sharedPreferences  = SharedPreferences();

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
              color: Color(0xffFFE0B5),
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.pinimg.com/236x/4d/e5/e9/4de5e9c1ec5ad83e02fa890ccfcc5fb8.jpg",
                ),
                fit: BoxFit.cover,
              ),
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
                  const Text(
                    "Creat your own itenerary!",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: const Alignment(0, 0.7),
              child: Container(
                height: 400,
                width: 400,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFE0B5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(3, 3),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: TextFormField(
                          onSaved: (val) {
                            PersonalGlobal.username = val;
                          },
                          validator: (val) =>
                              (val!.isEmpty) ? "Enter your username" : null,
                          decoration: InputDecoration(
                            focusColor: Colors.black,
                            contentPadding: const EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            label: const Text(
                              " User Name",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            prefixIcon: const Icon(Icons.person),
                          ),
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          onSaved: (val) {
                            PersonalGlobal.password = val;
                          },
                          validator: (val) =>
                              (val!.isEmpty) ? "Enter your password" : null,
                          decoration: InputDecoration(
                            focusColor: Colors.black,
                            contentPadding: const EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            label: const Text(
                              " Password",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                        ),
                      ),
                      const Text("Forgot Password"),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Align(
                          alignment: const Alignment(0, 0.6),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3, 3),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text("LogIn"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
