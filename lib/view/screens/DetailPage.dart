import 'package:flutter/material.dart';
import 'package:food_app/view/screens/CartPage.dart';
import 'package:food_app/view/screens/FavPage.dart';
import 'package:get/get.dart';

import '../../controller/CartController.dart';
import '../../modal/foodModal.dart';

class DetailFood extends StatelessWidget {
  const DetailFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodProduct> data =
        ModalRoute.of(context)!.settings.arguments as List<FoodProduct>;
    CartController cartController = Get.put(CartController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: data
              .map((e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      margin: const EdgeInsets.all(0.8),
                      elevation: 2,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 160,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(e.image),
                                          fit: BoxFit.cover)),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(e.name,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Text("₹ ${e.price.toString()}",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    Text("${e.rating} ⭐",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    // Text(e.detail,style:Text),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GetX<CartController>(builder: (controller) {
                                  return IconButton(
                                      onPressed: () {
                                        CartController.cartItems.contains(e)
                                            ? controller.removeToCart(
                                                foodProduct: e)
                                            : controller.addToCart(
                                                foodProduct: e);
                                      },
                                      icon: (CartController.cartItems
                                              .contains(e))
                                          ? const Icon(Icons.shopping_cart)
                                          : const Icon(
                                              Icons.shopping_cart_outlined));
                                }),
                                const SizedBox(
                                  width: 10,
                                ),
                                GetX<CartController>(builder: (controller) {
                                  return IconButton(
                                      onPressed: () {
                                        CartController.cartFav.contains(e)
                                            ? controller.removeToFav(
                                                foodProduct: e)
                                            : controller.addToFav(
                                                foodProduct: e);
                                      },
                                      icon: (CartController.cartFav.contains(e))
                                          ? const Icon(Icons.favorite)
                                          : const Icon(Icons.favorite_border));
                                }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: const Color(0xff05B025),
            onPressed: () {
              Get.to(const CartPage());
            },
            child: const Icon(Icons.shopping_cart),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: const Color(0xff05B025),
            onPressed: () {
              Get.to(const FAV());
            },
            child: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
