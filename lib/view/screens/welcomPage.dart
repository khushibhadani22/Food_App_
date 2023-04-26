import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff05B025),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Image.asset(
                'assets/image/food.jpg',
                height: 250,
                width: 250,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Fast delivery at\n your doorstep",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Home delivery and online reservation\n\t\t\t\t\t\tsystem for restaurants & cafe",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 130, vertical: 15)),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signIn');
                  },
                  child: const Text(
                    "Let's Explore",
                    style: TextStyle(
                        color: Color(0xff05B025), fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
