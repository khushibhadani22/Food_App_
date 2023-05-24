import 'package:flutter/material.dart';

import '../../helper/firebaseAuthHelper.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                key: signInFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Color(0xff05B025),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Login to Your Account",
                        style: TextStyle(
                          color: Color(0xff05B025),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your email first......";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            email = emailController.text;
                          });
                        },
                        controller: emailController,
                        style: const TextStyle(color: Color(0xff05B025)),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "abc253@gmail.com",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff05B025),
                            )),
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your password first......";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            password = passwordController.text;
                          });
                        },
                        controller: passwordController,
                        style: const TextStyle(color: Color(0xff05B025)),
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: "*********",
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xff05B025),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xff05B025)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05B025),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 13)),
                          onPressed: () async {
                            if (signInFormKey.currentState!.validate()) {
                              signInFormKey.currentState!.save();

                              Map<String, dynamic> res = await AuthHelper
                                  .authHelper
                                  .signIn(email: email!, password: password!);

                              if (res['user'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Login In Successful....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                                Navigator.of(context).pushReplacementNamed(
                                  '/HomePage',
                                );
                              } else if (res['error'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(res['error']),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: const Color(0xff05B025),
                                ));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Login In Failed....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                              }
                            }
                            setState(() {
                              emailController.clear();
                              passwordController.clear();
                              email = null;
                              password = null;
                            });
                          },
                          child: const Text(
                            "Log In",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signUp');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff05B025)),
                            ),
                            Text(
                              " Sign Up",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff05B025)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              Map<String, dynamic> res = await AuthHelper
                                  .authHelper
                                  .signInWithGoogle();
                              if (res['user'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content:
                                      Text("Login Successful With Google....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                                Navigator.of(context).pushReplacementNamed(
                                  '/HomePage',
                                );
                              } else if (res['error'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(res['error']),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: const Color(0xff05B025),
                                ));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content:
                                      Text("Login Failed With Google....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                              }
                            },
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white.withOpacity(0.9),
                              backgroundImage: const AssetImage(
                                'assets/image/google.jpg',
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              Map<String, dynamic> res = await AuthHelper
                                  .authHelper
                                  .logInWithAnonymously();

                              if (res['user'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content:
                                      Text("Login Successful As Guest....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                                Navigator.of(context).pushReplacementNamed(
                                  '/HomePage',
                                );
                              } else if (res['error'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(res['error']),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Login Failed As Guest....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                              }
                            },
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Color(0xff05B025),
                                size: 40,
                              ),
                            ),
                          ),
                        ],
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
