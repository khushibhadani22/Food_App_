import 'package:flutter/material.dart';

class FAV extends StatefulWidget {
  const FAV({Key? key}) : super(key: key);

  @override
  State<FAV> createState() => _FAVState();
}

class _FAVState extends State<FAV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "FAV",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
