import 'package:flutter/material.dart';

class Global {
  static String? email;
  static String? password;
  static final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController passwordController = TextEditingController();
}
