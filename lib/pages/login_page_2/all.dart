import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/pages/login_page_2/form.dart';

Widget all({required context, required size}) {
  return Stack(
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
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 05.0, sigmaY: 05.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
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
                style: GoogleFonts.rubikBubbles(
                    color: Colors.black, fontSize: 35, letterSpacing: 3),
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
            child: form(context: context),
          ),
        ),
      ),
    ],
  );
}
