import 'package:flutter/material.dart';
import 'package:food_app/view/screens/SignInPage.dart';
import 'package:food_app/view/screens/welcomPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      getPages: [
        GetPage(name: '/', page: () => const WelcomePage()),
        GetPage(name: '/homePage', page: () => const SignInPage()),
      ],
    );
  }
}
