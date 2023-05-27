import 'dart:ui';

import 'package:get/get.dart';

import '../modal/foodModal.dart';

class CartController extends GetxController {
  static RxList<FoodProduct> cartItems = <FoodProduct>[].obs;
  static RxList<FoodProduct> cartFav = <FoodProduct>[].obs;
  RxInt totalAmount = 0.obs;

  addToCart({required FoodProduct foodProduct}) {
    if (cartItems.contains(foodProduct)) {
      Get.snackbar(foodProduct.name, "Already in cart !!",
          backgroundColor: const Color(0xff05B025),
          colorText: const Color(0xffFFFFFF),
          snackPosition: SnackPosition.TOP);
    } else {
      cartItems.add(foodProduct);
    }
  }

  addToFav({required FoodProduct foodProduct}) {
    if (cartFav.contains(foodProduct)) {
      Get.snackbar(foodProduct.name, "Already in Favorite !!",
          backgroundColor: const Color(0xff05B025),
          colorText: const Color(0xffFFFFFF),
          snackPosition: SnackPosition.TOP);
    } else {
      cartFav.add(foodProduct);
    }
  }

  removeToCart({required FoodProduct foodProduct}) {
    if (cartItems.remove(foodProduct)) {
      Get.snackbar(foodProduct.name, "Remove from Cart !! ",
          backgroundColor: const Color(0xff05B025),
          colorText: const Color(0xffFFFFFF),
          snackPosition: SnackPosition.TOP);
    }
  }

  removeToFav({required FoodProduct foodProduct}) {
    if (cartFav.remove(foodProduct)) {
      Get.snackbar(foodProduct.name, "Remove from Favorite !! ",
          backgroundColor: const Color(0xff05B025),
          colorText: const Color(0xffFFFFFF),
          snackPosition: SnackPosition.TOP);
    }
  }

  addQuantity({required FoodProduct foodProduct}) {
    cartItems[cartItems.indexOf(foodProduct)].quantity++;
    getTotalAmount();
  }

  decreaseQuantity({required FoodProduct foodProduct}) {
    if (foodProduct.quantity > 1) {
      cartItems[cartItems.indexOf(foodProduct)].quantity--;
    } else {
      removeToCart(foodProduct: foodProduct);
    }
    getTotalAmount();
  }

  getTotalAmount() {
    RxInt amount = 0.obs;
    cartItems.forEach((element) {
      amount += (element.price * element.quantity.toInt());
    });
    totalAmount = amount;
    print(totalAmount.toString());
  }
}
