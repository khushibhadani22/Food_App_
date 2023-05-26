import 'package:flutter/material.dart';

import '../../modal/foodModal.dart';

class DetailFood extends StatelessWidget {
  const DetailFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FoodProduct> data =
        ModalRoute.of(context)!.settings.arguments as List<FoodProduct>;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: data
              .map((e) => Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 2,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 150,
                      width: double.infinity,
                      child: Row(
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
                              Text(e.name),
                              Text("₹ ${e.price.toString()}"),
                              Text("${e.rating} ⭐"),
                              // Text(e.detail),
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
