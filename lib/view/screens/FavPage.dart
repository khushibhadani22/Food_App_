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
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      resizeToAvoidBottomInset: false,
      body: Obx(() => GridView.builder(
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
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.green.shade100),
                              child: const Icon(
                                Icons.favorite,
                                color: Color(0xff05B025),
                              )),
                        ],
                      )
                    ],
                  ),
                );
              })
          // ListView(
          //   children: CartController.cartFav
          //       .map((food) => Card(
          //             color: Colors.white,
          //             elevation: 0,
          //             child: Container(
          //               margin: const EdgeInsets.all(10),
          //               padding: const EdgeInsets.all(10),
          //               height: 150,
          //               color: Colors.white,
          //               width: double.infinity,
          //               child: Row(
          //                 children: [
          //                   Container(
          //                     decoration: BoxDecoration(
          //                         borderRadius: BorderRadius.circular(15),
          //                         image: DecorationImage(
          //                             fit: BoxFit.cover,
          //                             image: NetworkImage(food.image))),
          //                     height: 110,
          //                     width: 110,
          //                   ),
          //                   const SizedBox(
          //                     width: 20,
          //                   ),
          //                   Column(
          //                     mainAxisAlignment: MainAxisAlignment.start,
          //                     crossAxisAlignment: CrossAxisAlignment.start,
          //                     children: [
          //                       Text(food.name,
          //                           style: const TextStyle(
          //                               color: Colors.black,
          //                               fontWeight: FontWeight.bold)),
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ))
          //       .toList(),
          // )
          ),
    );
  }
}
