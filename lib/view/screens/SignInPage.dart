import 'package:flutter/material.dart';

import '../../controller/Global.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/image/food1.jpg'),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 700,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(60))),
              child: Form(
                key: Global.signUpFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Color(0xff05B025),
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      const Text(
                        "Login to your account",
                        style: TextStyle(color: Color(0xff05B025)),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "enter firs your email......";
                          }
                          return null;
                        },
                        onSaved: (val) {},
                        controller: Global.emailController,
                        style: const TextStyle(color: Color(0xff05B025)),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xff05B025),
                          ),
                          hintText: "abc@gmail.com",
                          helperStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "enter firs your email......";
                          }
                          return null;
                        },
                        onSaved: (val) {},
                        controller: Global.passwordController,
                        style: const TextStyle(color: Color(0xff05B025)),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xff05B025),
                          ),
                          hintText: "********",
                          helperStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(),
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
//Brow the largest variety of food,drink and more
