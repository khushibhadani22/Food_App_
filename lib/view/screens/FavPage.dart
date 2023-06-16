import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/CartController.dart';

class FAV extends StatelessWidget {
  const FAV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find<CartController>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff05B025),
          ),
        ),
        title: const Text(
          "My Favorite",
          style:
              TextStyle(color: Color(0xff05B025), fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                height: 60,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green.shade100),
                child: const Icon(
                  Icons.favorite,
                  color: Color(0xff05B025),
                )),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      body: Obx(() => GridView.builder(
          padding: const EdgeInsets.all(3),
          itemCount: CartController.cartFav.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, i) {
            return Card(
              elevation: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              CartController.cartFav[i].image,
                            ))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        CartController.cartFav[i].name,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            );
          })),
    );
  }
}
