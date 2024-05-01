import 'package:flutter/material.dart';
import 'package:login_page/models/userNameModal.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../routes/routes_utils.dart';

class UserNameController extends ChangeNotifier {
  late SharedPreferences preferences;
  late UserNameModal userNameModal;

  UserNameController({required preferences}) {
    init();
  }

  void init() {
    userNameModal = UserNameModal(
        initalValue: preferences.getString('userName') ?? 'Demo Name');
  }

  void userNameF() {
    userNameModal.userName = PersonalGlobal.username ?? "Demo Name";
    preferences.setString('userName', userNameModal.userName);
  }
}
