import 'package:flutter/material.dart';
import 'package:login_page/controler/usernameController.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            Provider.of<UserNameController>(context).userNameModal.userName),
      ),
    );
  }
}
