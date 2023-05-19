class FoodProduct {
  final String name;
  final String detail;
  final String image;
  final int price;
  final double rating;
  final String time;

  FoodProduct({
    required this.name,
    required this.detail,
    required this.image,
    required this.price,
    required this.rating,
    required this.time,
  });

  factory FoodProduct.fromData({required FoodProduct data}) {
    return FoodProduct(
        name: data.name,
        detail: data.detail,
        image: data.image,
        price: data.price,
        rating: data.rating,
        time: data.time);
  }
}
