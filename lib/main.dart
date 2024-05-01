import 'package:flutter/material.dart';
import 'package:login_page/controler/usernameController.dart';
import 'package:login_page/pages/home_paeg/home_page.dart';
import 'package:login_page/pages/login_page_1/login_page_1.dart';
import 'package:login_page/pages/login_page_2/login_page_2.dart';
import 'package:login_page/routes/routes_utils.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserNameController(preferences: preferences),
        )
      ],
      child: const MyApp(),
    ),
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
        Routes.homepage: (context) => const HomePage(),
      },
    );
  }
}
