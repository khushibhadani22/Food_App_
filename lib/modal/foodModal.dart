class FoodProduct {
  String? foodImage;
  String? foodName;
  int? foodQuantity;
  int? foodPrice;
  bool? foodFavourite;
  bool? foodCart;

  FoodProduct({
    required this.foodImage,
    required this.foodName,
    required this.foodQuantity,
    required this.foodPrice,
    required this.foodFavourite,
    required this.foodCart,
  });

  FoodProduct.fromMap(Map<String, dynamic> mapData) {
    foodImage = mapData[foodImage];
    foodName = mapData[foodName];
    foodQuantity = mapData[foodQuantity];
    foodPrice = mapData[foodPrice];
    foodFavourite = mapData[foodFavourite];
    foodCart = mapData[foodCart];
  }

  Map<String, dynamic> toMap() => {
        'foodImage': foodImage,
        'foodName': foodName,
        'foodQuantity': foodQuantity,
        'foodPrice': foodPrice,
        'foodFavourite': foodFavourite,
        'foodCart': foodCart,
      };
}
