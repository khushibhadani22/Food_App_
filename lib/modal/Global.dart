import 'package:food_app/modal/foodModal.dart';

class Global {
  static List category = [
    {
      'food': 'South I',
      'name': 'dosa',
      'price': 100,
      'time': '22 min',
      'image':
          'https://imgmedia.lbb.in/media/2022/03/6229b505adf00927e3a5f4b1_1646900485918.jpg',
      'rating': 4.5,
      'index': 0,
      'list': south,
      'image1':
          'https://cdn.iconscout.com/icon/free/png-256/free-south-indian-food-1851621-1569346.png',
    },
    {
      'food': 'Chinese',
      'index': 1,
      'list': chinese,
      'image1': 'https://cdn-icons-png.flaticon.com/512/3447/3447852.png',
      'name': 'manchu soup',
      'price': 150,
      'time': '22 min',
      'rating': 4.2,
      'image':
          'https://www.chefkunalkapur.com/wp-content/uploads/2021/03/Veg-Manchow-Soup-scaled.jpeg?v=1621618246',
    },
    {
      'food': 'Punjabi',
      'index': 2,
      'list': punjabi,
      'image1':
          'https://cdn.iconscout.com/icon/free/png-256/free-punjabi-food-1851623-1569348.png',
      'name': 'rajma chawal',
      'price': 250,
      'time': '22 min',
      'rating': 4.3,
      'image':
          'https://www.secondrecipe.com/wp-content/uploads/2017/08/rajma-chawal-1.jpg',
    },
    {
      'food': 'Pizza',
      'index': 3,
      'list': pizza,
      'image1': 'https://cdn-icons-png.flaticon.com/512/7183/7183811.png',
      'name': 'Margherita',
      'price': 400,
      'time': '22 min',
      'rating': 4.5,
      'image':
          'https://static.toiimg.com/thumb/56868564.cms?imgsize=1948751&width=800&height=800',
    },
    {
      'food': 'Mexican',
      'index': 4,
      'list': mexican,
      'image1': 'https://cdn-icons-png.flaticon.com/512/74/74561.png',
      'name': 'tacos',
      'price': 170,
      'time': '22 min',
      'rating': 4.5,
      'image':
          'https://images.immediate.co.uk/production/volatile/sites/30/2022/10/Pork-carnitas-b94893e.jpg?quality=90&resize=556,505',
    },
    {
      'food': 'Burger',
      'index': 5,
      'list': burger,
      'image1':
          'https://i.pinimg.com/originals/09/64/92/096492ba4261235a10b6826d93bb0dc2.png',
      'name': 'Spicy Paneer',
      'price': 250,
      'time': '22 min',
      'rating': 4.5,
      'image':
          'https://mcdonaldsblog.in/wp-content/uploads/2016/06/mcspicy-paneer-1-1.jpg',
    },
    {
      'food': 'Sizzler',
      'index': 6,
      'list': sizzler,
      'image1':
          'https://static.vecteezy.com/system/resources/previews/010/621/205/non_2x/samosa-line-icon-vector.jpg',
      'name': 'Italian Sizzler',
      'price': 300,
      'time': '22 min',
      'rating': 4.4,
      'image':
          'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/umar/Italian_Pasta_Sizzler.jpg',
    },
  ];
  static List newSouth = [
    {
      'name': 'dosa',
      'detail': 'Paper , Maisur , Sambhar , Coconut Chutney',
      'image':
          'https://imgmedia.lbb.in/media/2022/03/6229b505adf00927e3a5f4b1_1646900485918.jpg',
      'price': 100,
      'rating': 4.5,
      'time': '22 minutes',
    },
    {
      'name': 'idali',
      'detail': 'Idali , Sambhar , Coconut Chutney',
      'image': 'https://pudhari.news/wp-content/uploads/2021/09/IDALI.jpg',
      'price': 50,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'uttapam',
      'detail': 'Uttapam , Sambhar , Coconut Chutney',
      'image':
          'https://c.ndtvimg.com/2022-08/4i2h41mo_uttapam_625x300_10_August_22.jpg',
      'price': 150,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'mendu vada',
      'detail': 'Vada , Sambhar , Coconut Chutney',
      'image':
          'https://im.rediff.com/travel-living/2015/apr/144302c33c547d28928409d18e3cf130093b56e8.jpg',
      'price': 40,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'upama',
      'detail': 'Soji , Capsicum , Onion , Garlic',
      'image':
          'https://www.thedeliciouscrescent.com/wp-content/uploads/2016/05/Vegetable-Upma-7-500x375.jpg',
      'price': 140,
      'rating': 4.5,
      'time': '22 minutes',
    },
    {
      'name': 'appam',
      'detail': 'Appam , Coconut Chutney , Catchup',
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
      'detail': 'Cabbage , Carrot , Garlic , Onion , Spicy Sauce',
      'image':
          'https://myfoodstory.com/wp-content/uploads/2021/10/Veg-Manchurian-FI-1.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'dry manchurian',
      'detail': 'Cabbage , Carrot , Garlic , Onion , Spicy Sauce',
      'image':
          'https://www.yummytummyaarthi.com/wp-content/uploads/2015/11/1-9.jpg',
      'price': 120,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'haka noodles',
      'detail': 'Noddles , Vegetable , Spicy Sauce',
      'image': 'https://static.toiimg.com/photo/75356205.cms',
      'price': 180,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'chinese Bhel',
      'detail': 'Fried Noodles , Vegetable , Spicy Sauce',
      'image':
          'https://img-global.cpcdn.com/recipes/3b9c6d673a81d0e8/1200x630cq70/photo.jpg',
      'price': 100,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'manchu soup',
      'detail': 'Vegetable , Onion , Garlic , fried noodles , spicy sauce',
      'image':
          'https://www.chefkunalkapur.com/wp-content/uploads/2021/03/Veg-Manchow-Soup-scaled.jpeg?v=1621618246',
      'price': 50,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'spring rolls',
      'detail': 'vegetable , noodles , spicy sauce',
      'image':
          'https://redhousespice.com/wp-content/uploads/2021/12/whole-spring-rolls-and-halved-ones-scaled.jpg',
      'price': 220,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'dumplings',
      'detail': 'Vegetable , Cheese , Garlic Sauce',
      'image':
          'https://www.thespruceeats.com/thmb/UnVh_-znw7ikMUciZIx5sNqBtTU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/steamed-momos-wontons-1957616-hero-01-1c59e22bad0347daa8f0dfe12894bc3c.jpg',
      'price': 100,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'macaroni pasta',
      'detail': 'Pasta , Vegetable , Spicy Sauce',
      'image':
          'https://vismaifood.com/storage/app/uploads/public/7b2/49e/d12/thumb__700_0_0_0_auto.jpg',
      'price': 140,
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
      'name': 'butter masala',
      'detail': '',
      'image':
          'https://www.cubesnjuliennes.com/wp-content/uploads/2019/11/Paneer-Butter-Masala-Recipe-1.jpg',
      'price': 350,
      'rating': 4.6,
      'time': '22 minutes',
    },
    {
      'name': 'paneer chilli dry',
      'detail': '',
      'image':
          'https://www.indianhealthyrecipes.com/wp-content/uploads/2022/02/chilli-paneer-recipe.jpg',
      'price': 250,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'paneer chilli',
      'detail': '',
      'image':
          'https://www.yummytummyaarthi.com/wp-content/uploads/2014/09/1-27.jpg',
      'price': 250,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'Kaju kari',
      'detail': '',
      'image': 'https://i.ytimg.com/vi/yIjXRwjkqFw/maxresdefault.jpg',
      'price': 230,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'Lassi',
      'detail': '',
      'image':
          'https://www.indianveggiedelight.com/wp-content/uploads/2023/01/sweet-lassi-recipe-featured.jpg',
      'price': 150,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'Dal Makhani',
      'detail': '',
      'image': 'https://static.toiimg.com/photo/53097626.cms',
      'price': 150,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'Mater paneer',
      'detail': '',
      'image':
          'https://www.indianhealthyrecipes.com/wp-content/uploads/2021/03/matar-paneer.jpg',
      'price': 190,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'choole bhature',
      'detail': '',
      'image': 'https://i.ytimg.com/vi/csfIOfMnRGg/maxresdefault.jpg',
      'price': 350,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'bread pakora',
      'detail': '',
      'image':
          'https://www.vegrecipesofindia.com/wp-content/uploads/2010/08/bread-pakora-recipe.jpg',
      'price': 150,
      'rating': 4.4,
      'time': '22 minutes',
    },
    {
      'name': 'rajma chawal',
      'detail': '',
      'image':
          'https://www.secondrecipe.com/wp-content/uploads/2017/08/rajma-chawal-1.jpg',
      'price': 250,
      'rating': 4.4,
      'time': '22 minutes',
    },
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
      'detail':
          'onions, black olives, bell peppers , tomatoes, mozzarella cheese',
      'image':
          'https://im1.dineout.co.in/images/uploads/restaurant/sharpen/5/a/v/p5595-15619599795d199e2b1ee35.jpg?tr=tr:n-xlarge',
      'price': 395,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Margherita Pizza',
      'detail':
          'tomato sauce, fresh mozzarella cheese, and fresh basil,olive oil and slices of fresh tomatoes',
      'image':
          'https://static.toiimg.com/thumb/56868564.cms?imgsize=1948751&width=800&height=800',
      'price': 290,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Quick Tomato',
      'detail': '',
      'image':
          'https://hips.hearstapps.com/womansday/assets/cm/15/09/54ef8b64366c1_-_fresh-tomato-pizza-kqgv52-xl.jpg',
      'price': 195,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Four Cheese',
      'detail': '',
      'image':
          'https://static.toiimg.com/thumb/59123476.cms?width=1200&height=900',
      'price': 225,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Cheesy Vegetable',
      'detail': '',
      'image':
          'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Waagmi_Soni/Gralic_Crust_Veggie_Pizza.jpg',
      'price': 300,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Tandoori Paneer',
      'detail': '',
      'image':
          'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Pooja_Thakur/Tandoori_Paneer_Tikka_Skillet_Pizza.jpg',
      'price': 400,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Thin Crust',
      'detail': '',
      'image':
          'https://www.kingarthurbaking.com/sites/default/files/styles/featured_image/public/2020-03/hawaiian-pizza.jpg?itok=a1-_QjRA',
      'price': 450,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Chocolate Pizza',
      'detail': '',
      'image':
          'https://assets.epicurious.com/photos/560d995cf3a00aeb2f1cf542/1:1/w_2560%2Cc_limit/237341.jpg',
      'price': 420,
      'rating': 4.9,
      'time': '22 minutes',
    },
    {
      'name': 'Broccoli and bacon',
      'detail': '',
      'image':
          'https://img.taste.com.au/mxSAUrze/taste/2016/11/broccoli-and-bacon-pizza-105800-1.jpeg',
      'price': 510,
      'rating': 4.9,
      'time': '22 minutes',
    },
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
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeVI4XzuI-lhVkea7rPkUxWoBXyXcfZKygZw&usqp=CAU',
      'price': 190,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'tacos',
      'detail': '',
      'image':
          'https://images.immediate.co.uk/production/volatile/sites/30/2022/10/Pork-carnitas-b94893e.jpg?quality=90&resize=556,505',
      'price': 210,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Cauliflower Tacos',
      'detail': '',
      'image':
          'https://www.acouplecooks.com/wp-content/uploads/2019/01/Crispy-Cauliflower-Tacos-036.jpg',
      'price': 270,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Sweet Potato',
      'detail': '',
      'image':
          'https://www.acouplecooks.com/wp-content/uploads/2021/09/Sweet-Potato-Enchiladas-010.jpg',
      'price': 100,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Simple Guacamole',
      'detail': '',
      'image':
          'https://www.acouplecooks.com/wp-content/uploads/2020/02/Simple-Guacamole-001.jpg',
      'price': 210,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Butternut Squash',
      'detail': '',
      'image':
          'https://cookieandkate.com/images/2012/09/butternut-squash-chipotle-chili-recipe-0-1-550x822.jpg',
      'price': 200,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Loaded Nachos',
      'detail': '',
      'image':
          'https://recipesblob.oetker.in/assets/b72049329c8742b98daf790c9ef937bd/1272x764/loaded-nachos.jpg',
      'price': 210,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Burrito',
      'detail': '',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Burrito.JPG/800px-Burrito.JPG',
      'price': 230,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Vegetarian Tortilla',
      'detail': '',
      'image':
          'https://www.acouplecooks.com/wp-content/uploads/2018/02/Chipotle-Black-Bean-Tortilla-Soup.jpg',
      'price': 300,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Mexican Rice',
      'detail': '',
      'image':
          'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/03/Mexican-Rice-8.jpg',
      'price': 310,
      'rating': 4.2,
      'time': '22 minutes',
    },
    {
      'name': 'Mexican Salad',
      'detail': '',
      'image':
          'https://www.acouplecooks.com/wp-content/uploads/2020/02/Mexican-Salad-005.jpg',
      'price': 100,
      'rating': 4.2,
      'time': '22 minutes',
    },
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
      'detail':
          'spiced potato patty, often atop a bed of lettuce, tomatoes, onions , chutney',
      'image':
          'https://im.indiatimes.in/content/2023/Mar/tikki_6418927966115.jpg?w=1200&h=900&cc=1',
      'price': 50,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Cheese Lava American',
      'detail':
          'Roasted chipotle sauce ,onion , jalapenos ,salad mix ,Cheesy veg patty',
      'image':
          'https://menulist.menu/storage/media/dishes_main/14203821/nk97pp8xd8ijlcpexlmy.png',
      'price': 200,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Mexican Burger',
      'detail':
          'salsa, guacamole, chorizo, jalapeno peppers, cilantro,  melted cheese',
      'image':
          'https://s7d1.scene7.com/is/image/mcdonalds/mcRoyale-jdh-v1_b:1-4-product-tile-desktop',
      'price': 250,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Spicy Paneer',
      'detail':
          'grilled paneer patty,onions, tomatoes, lettuce, jalapenos, hot sauce',
      'image':
          'https://mcdonaldsblog.in/wp-content/uploads/2016/06/mcspicy-paneer-1-1.jpg',
      'price': 350,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'maharaja',
      'detail': 'onion, cheese , salad mix , tomatoes , chutney',
      'image':
          'https://lh3.googleusercontent.com/LGPTqj2RLK2sxooWlZuF_Htb3X4SrtrWgEyfwfDxsRi14kdizn4Nzq7RbW9G3pcNMlRreUt0DAR-stA1uxGmfieLWsPDFPFU6nGZliuG',
      'price': 300,
      'rating': 4.8,
      'time': '22 minutes',
    },
    {
      'name': 'Triple cheese',
      'detail': 'double cheese , onion , tomatoes ,chutney ',
      'image':
          'https://cdn.urbanpiper.com/media/bizmedia/2023/04/28/awWX2h-AMTRCV-5276-1-5276.png',
      'price': 450,
      'rating': 4.8,
      'time': '22 minutes',
    },
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
      'image':
          'https://www.archanaskitchen.com/images/archanaskitchen/1-Author/umar/Italian_Pasta_Sizzler.jpg',
      'price': 180,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'Paneer Sizzler',
      'detail': '',
      'image': 'https://im.hunt.in/local/Gallery/3030913/l/3030913_b5e9f.jpg',
      'price': 280,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'chinese Sizzler',
      'detail': '',
      'image':
          'https://cexp.in/wp-content/uploads/2020/02/Veg-Chinese-Sizzler.jpg',
      'price': 200,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'mexican Sizzler',
      'detail': '',
      'image': 'https://i.ytimg.com/vi/yl3L9-qbTrY/maxresdefault.jpg',
      'price': 300,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'lebanese Sizzler',
      'detail': '',
      'image':
          'https://5.imimg.com/data5/XR/TR/GLADMIN-9151659/lebanese-sizzler-500x500.jpg',
      'price': 420,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'thai Sizzler',
      'detail': '',
      'image':
          'https://cdn.tarladalal.com/members/9306/images/lebanese_sizzler-7453.jpg',
      'price': 350,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'Malpua Sizzler',
      'detail': '',
      'image':
          'https://cdn.tarladalal.com/members/9306/big/big_malpua_rabdi_sizzler-7488.jpg',
      'price': 250,
      'rating': 4.7,
      'time': '22 minutes',
    },
    {
      'name': 'brownie Sizzler',
      'detail': '',
      'image': 'https://m.media-amazon.com/images/I/71HOWL-7NXL._SL1100_.jpg',
      'price': 420,
      'rating': 4.7,
      'time': '22 minutes',
    },
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
