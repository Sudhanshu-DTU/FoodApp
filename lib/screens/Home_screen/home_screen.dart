import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget SingleProducts() => Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Image.network(
                    'https://pngimg.com/uploads/spinach/spinach_PNG15.png')),
            Expanded(
                child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, bottom: 5, top: 5, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fresh Brasil',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '₹16/50gm',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.only(left: 6),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                '50gm',
                                style: TextStyle(fontSize: 12),
                              )),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                            child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 18,
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 18,
                              )
                            ],
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      );

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 23,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shopping_cart,
                size: 23,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://dukaan-us.s3.amazonaws.com/200795/00b45287-816b-4866-98b9-282e6bc6fbf0/image-c79f84e8-b7fa-4c9d-933f-4c9ed82fe57f.png'),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Herbs Seasoning',
                    style: TextStyle(
                        color: Color.fromARGB(255, 60, 58, 58),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromARGB(255, 60, 58, 58),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Fresh Fruits',
                    style: TextStyle(
                        color: Color.fromARGB(255, 60, 58, 58),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Color.fromARGB(255, 60, 58, 58),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts(),
                  SingleProducts()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
