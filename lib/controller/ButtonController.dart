import 'package:get/get.dart';

import '../modal/foodModal.dart';

class ButtonController extends GetxController {
  RxInt tap = 0.obs;
  RxBool pressOn = false.obs;

  toggle({required int i}) {
    tap(i);
  }

  press({required FoodProduct food}) {
    pressOn(true);
  }
}
