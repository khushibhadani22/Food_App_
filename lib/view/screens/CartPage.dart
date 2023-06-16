import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/CartController.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find<CartController>();
    cartController.getTotalAmount();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "My Order",
          style:
              TextStyle(color: Color(0xff05B025), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(() => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...CartController.cartItems
                        .map((food) => Card(
                              color: Colors.white,
                              elevation: 0,
                              child: Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
                                height: 150,
                                color: Colors.white,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(food.image))),
                                      height: 110,
                                      width: 110,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(food.name,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                        Container(
                                          height: 40,
                                          width: 110,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.green.shade100,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    cartController
                                                        .decreaseQuantity(
                                                            foodProduct: food);
                                                  },
                                                  icon: const Icon(
                                                    Icons.remove,
                                                    color: Color(0xff05B025),
                                                  )),
                                              Text(
                                                food.quantity.toString(),
                                                style: const TextStyle(
                                                    color: Color(0xff05B025)),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    cartController.addQuantity(
                                                        foodProduct: food);
                                                  },
                                                  icon: const Icon(
                                                    Icons.add,
                                                    color: Color(0xff05B025),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Text("₹ ${food.price.toString()}",
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                        GestureDetector(
                                          onTap: () {
                                            cartController.removeToCart(
                                                foodProduct: food);
                                          },
                                          child: Container(
                                            height: 35,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              color: Colors.green.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: const Center(
                                                child: Text(
                                              "Delete",
                                              style: TextStyle(
                                                  color: Color(0xff05B025),
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                    Container(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0.2,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          const Text(
                            "TotalAmount :",
                            style: TextStyle(
                                color: Color(0xff05B025),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          const Spacer(),
                          Text(
                            cartController.totalAmount.toString(),
                            style: const TextStyle(
                                color: Color(0xff05B025),
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
