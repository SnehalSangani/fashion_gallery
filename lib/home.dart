import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List image=[
    "assets/images/blazer.jpg",
    "assets/images/earing.jpg",
    "assets/images/hoddy.jpg",
    "assets/images/jeans.jpg",
    "assets/images/shirt.jpg",
    "assets/images/shoes.png",
    "assets/images/tshirt.jpg",
    "assets/images/watch.jpg",
  ];
  List item=[
    "BLAZER",
    "EARING",
    "HODDY",
    "JEANS",
    "SHIRT",
    "SHOES",
    "T SHIRT",
    "WATCH",
  ];
  List price=[
    "\$99.99",
    "\$45.96",
    "\$70.00",
    "\$72.20",
    "\$25.33",
    "\$30.33",
    "\$45.90",
    "\$99.99",
  ];
  List rate=[
    "4.2 ⭐",
    "4.7 ⭐",
    "4.7 ⭐",
    "4.5 ⭐",
    "4.0 ⭐",
    "5.0 ⭐",
    "4.3 ⭐",
    "4.2 ⭐",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("SHOPPING GALLERY UI"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
          Color(0xff6ec3fa),
          Color(0xffff9cfc),
          ],
          ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: image.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Box(image[index], item[index], price[index], rate[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
  Widget Box(String image, String item, String price, String rate) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          alignment: Alignment.center,
          child: Image.asset(
            image,
            height: 230,
            width: 260,
          ),
        ),
            Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 20,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(12)),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$rate ",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8))),
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    "\$ $price",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
