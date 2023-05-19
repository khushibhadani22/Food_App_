import 'package:food_app/modal/foodModal.dart';

class Global {
  static List category = [
    {
      'food': 'South Indian',
      'index': 0,
      'list': south,
    },
    {
      'food': 'Chinese',
      'index': 1,
      'list': chinese,
    },
    {
      'food': 'Punjabi',
      'index': 2,
      'list': punjabi,
    },
    {
      'food': 'Pizza',
      'index': 3,
      'list': pizza,
    },
    {
      'food': 'Mexican',
      'index': 4,
      'list': mexican,
    },
    {
      'food': 'Burger',
      'index': 5,
      'list': burger,
    },
    {
      'food': 'Sizzler',
      'index': 6,
      'list': sizzler,
    },
  ];
  static List newSouth = [
    {
      'name': 'dosa',
      'detail': '',
      'image':
          'https://imgmedia.lbb.in/media/2022/03/6229b505adf00927e3a5f4b1_1646900485918.jpg',
      'price': 100,
      'rating': 4.5,
      'time': '22 minutes',
    },
    {
      'name': 'idali',
      'detail': '',
      'image': 'https://pudhari.news/wp-content/uploads/2021/09/IDALI.jpg',
      'price': 50,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'uttapam',
      'detail': '',
      'image':
          'https://c.ndtvimg.com/2022-08/4i2h41mo_uttapam_625x300_10_August_22.jpg',
      'price': 150,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'mendu vada',
      'detail': '',
      'image':
          'https://im.rediff.com/travel-living/2015/apr/144302c33c547d28928409d18e3cf130093b56e8.jpg',
      'price': 50,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'upama',
      'detail': '',
      'image':
          'https://www.thedeliciouscrescent.com/wp-content/uploads/2016/05/Vegetable-Upma-7-500x375.jpg',
      'price': 140,
      'rating': 4.5,
      'time': '22 minutes',
    },
    {
      'name': 'appam',
      'detail': '',
      'image':
          'https://img-global.cpcdn.com/recipes/3c59abdd2d05d3f3/1200x630cq70/photo.jpg',
      'price': 170,
      'rating': 4.4,
      'time': '22 minutes',
    },
  ];
  static List<FoodProduct> south = newSouth
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
  static List newChinese = [
    {
      'name': 'manchurian',
      'detail': '',
      'image':
          'https://myfoodstory.com/wp-content/uploads/2021/10/Veg-Manchurian-FI-1.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'dry manchurian',
      'detail': '',
      'image':
          'https://www.yummytummyaarthi.com/wp-content/uploads/2015/11/1-9.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'haka noodles',
      'detail': '',
      'image': 'https://static.toiimg.com/photo/75356205.cms',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'chinese Bhel',
      'detail': '',
      'image':
          'https://img-global.cpcdn.com/recipes/3b9c6d673a81d0e8/1200x630cq70/photo.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'manchu soup',
      'detail': '',
      'image':
          'https://www.chefkunalkapur.com/wp-content/uploads/2021/03/Veg-Manchow-Soup-scaled.jpeg?v=1621618246',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'spring rolls',
      'detail': '',
      'image':
          'https://redhousespice.com/wp-content/uploads/2021/12/whole-spring-rolls-and-halved-ones-scaled.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'dumplings',
      'detail': '',
      'image':
          'https://www.thespruceeats.com/thmb/UnVh_-znw7ikMUciZIx5sNqBtTU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/steamed-momos-wontons-1957616-hero-01-1c59e22bad0347daa8f0dfe12894bc3c.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'macaroni pasta',
      'detail': '',
      'image':
          'https://vismaifood.com/storage/app/uploads/public/7b2/49e/d12/thumb__700_0_0_0_auto.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
  ];
  static List<FoodProduct> chinese = newChinese
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
  static List newPunjabi = [
    {
      'name': 'cheese butter masala',
      'detail': '',
      'image': '',
      'price': 150,
      'rating': 4.4,
      'time': '22 minutes',
    }
  ];
  static List<FoodProduct> punjabi = newPunjabi
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
  static List newPizza = [
    {
      'name': '7 cheese',
      'detail': '',
      'image': '',
      'price': 195,
      'rating': 4.9,
      'time': '22 minutes',
    }
  ];
  static List<FoodProduct> pizza = newPizza
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
  static List newMexican = [
    {
      'name': 'mexican',
      'detail': '',
      'image': '',
      'price': 170,
      'rating': 4.2,
      'time': '22 minutes',
    }
  ];
  static List<FoodProduct> mexican = newMexican
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
  static List newBurger = [
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Aloo Tikki',
      'detail': '',
      'image': '',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    }
  ];
  static List<FoodProduct> burger = newBurger
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
  static List newSizzler = [
    {
      'name': 'Italian Sizzler',
      'detail': '',
      'image': '',
      'price': 180,
      'rating': 4.7,
      'time': '22 minutes',
    }
  ];
  static List<FoodProduct> sizzler = newSizzler
      .map((e) => FoodProduct(
          name: e['name'],
          detail: e['detail'],
          image: e['image'],
          price: e['price'],
          rating: e['rating'],
          time: e['time']))
      .toList();
}
