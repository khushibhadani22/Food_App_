import 'package:flutter/material.dart';

import '../../helper/firebaseAuthHelper.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  String? email;
  String? password;
  String? name;
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white,
              ),
              child: Form(
                key: signUpFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Create an account\nLet's get Started!",
                            style: TextStyle(
                                color: Color(0xff05B025),
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Enter your name first......";
                          }
                          return null;
                        },
                        onSaved: (val) {
                          setState(() {
                            name = nameController.text;
                          });
                        },
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        style: const TextStyle(color: Color(0xff05B025)),
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Name",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff05B025),
                            )),
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
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Color(0xff05B025)),
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Email or Phone",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
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
                        obscureText: true,
                        style: const TextStyle(color: Color(0xff05B025)),
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "password",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Color(0xff05B025),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff05B025),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 145, vertical: 10)),
                          onPressed: () async {
                            if (signUpFormKey.currentState!.validate()) {
                              signUpFormKey.currentState!.save();

                              Map<String, dynamic> res =
                                  await AuthHelper.authHelper.signUp(
                                      name: name!,
                                      email: email!,
                                      password: password!);

                              if (res['user'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Sign Up Successful....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                              } else if (res['error'] != null) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(res['error']),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: const Color(0xff05B025),
                                ));
                              } else {
                                Navigator.of(context).pop();

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Sign Up Failed....."),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Color(0xff05B025),
                                ));
                              }
                              Navigator.of(context).pop();
                            }
                            setState(() {
                              emailController.clear();
                              nameController.clear();
                              passwordController.clear();
                              email = null;
                              password = null;
                              name = null;
                            });
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(color: Color(0xff05B025)),
                            ),
                            Text(
                              "Log In",
                              style: TextStyle(
                                  color: Color(0xff05B025),
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 60,
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
