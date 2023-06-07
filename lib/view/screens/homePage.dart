import 'package:flutter/material.dart';
import 'package:food_app/view/screens/CartPage.dart';
import 'package:get/get.dart';
import '../../modal/Global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  void onTapItem(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: SizedBox(
        height: 60,
        width: double.infinity,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: const Color(0xff05B025),
          iconSize: 25,
          selectedLabelStyle: const TextStyle(
              color: Color(0xff05B025), fontWeight: FontWeight.bold),
          onTap: onTapItem,
          currentIndex: index,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.home_outlined,
                  color: Color(0xff05B025),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff05B025),
                ),
                label: "Places"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xff05B025),
                ),
                label: "Shopping"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.favorite_border,
                  color: Color(0xff05B025),
                ),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.person_outline,
                  color: Color(0xff05B025),
                ),
                label: "Profile"),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xff05B025),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.black),
                        cursorColor: Colors.black,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "Search",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Category",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: Global.category
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed('/DetailPage',
                                              arguments: e['list']);
                                        },
                                        child: Container(
                                          height: 70,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      e['image1'])),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        e['food'],
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ))
                            .toList()),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, i) {
                        return Card(
                          elevation: 2,
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed('/DetailPage',
                                  arguments: Global.category[i]['list']);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        foregroundImage: NetworkImage(
                                            "${Global.category[i]['image']}"),
                                      ),
                                      const SizedBox(
                                        width: 45,
                                      ),
                                      // IconButton(
                                      // onPressed: () {
                                      //   Get.to(const FAV());
                                      // },
                                      // icon: const Icon(
                                      //   CupertinoIcons.heart,
                                      // ))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${Global.category[i]['name']}"),
                                      Text("₹ ${Global.category[i]['price']}"),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("${Global.category[i]['time']}"),
                                      Text("${Global.category[i]['rating']} ⭐"),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(const CartPage());
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xff05B025),
                                          shape: BoxShape.circle),
                                      height: 40,
                                      width: 50,
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: Global.category.length,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
