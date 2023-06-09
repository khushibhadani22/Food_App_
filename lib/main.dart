import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/view/screens/CartPage.dart';
import 'package:food_app/view/screens/DetailPage.dart';
import 'package:food_app/view/screens/FavPage.dart';
import 'package:food_app/view/screens/SignInPage.dart';
import 'package:food_app/view/screens/SignUpPage.dart';
import 'package:food_app/view/screens/homePage.dart';
import 'package:food_app/view/screens/main_page_view.dart';
import 'package:food_app/view/screens/welcomPage.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        GetPage(name: '/signIn', page: () => const SignInPage()),
        GetPage(name: '/signUp', page: () => const SignUpPage()),
        GetPage(name: '/HomePage', page: () => const HomePage()),
        GetPage(name: '/DetailPage', page: () => const DetailFood()),
        GetPage(name: '/favPage', page: () => const FAV()),
        GetPage(name: '/cartPage', page: () => const CartPage()),
        GetPage(name: '/main', page: () => const Main()),
      ],
    );
  }
}
