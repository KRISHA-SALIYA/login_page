import 'dart:ui';

import 'package:flutter/material.dart';

Widget background() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://i.pinimg.com/236x/4d/e5/e9/4de5e9c1ec5ad83e02fa890ccfcc5fb8.jpg",
        ),
        fit: BoxFit.cover,
      ),
      // color: Colors.amber,
    ),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 05.0, sigmaY: 05.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
      ),
    ),
  );
}
