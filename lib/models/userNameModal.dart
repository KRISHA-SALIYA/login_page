import 'package:flutter/material.dart';

class UserNameModal {
  late String userName;

  String get getUserName => userName;

  UserNameModal({required String initalValue}) {
    userName = initalValue;
  }
}
