import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  ProductOverview({Key? key}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SigninCharacter _character = SigninCharacter.fill;

  Widget bottomNavigationBar(
      {required Color iconcolor,
      required Color backgroundcolor,
      required Color color,
      required String title,
      required IconData iconData}) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      color: backgroundcolor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconcolor,
            ),
            Text(
              title,
              style: TextStyle(
                color: color,
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(
              backgroundcolor: Colors.green,
              color: Colors.white70,
              iconcolor: Colors.orange,
              title: " Home",
              iconData: Icons.home),
          bottomNavigationBar(
              backgroundcolor: Colors.green,
              color: Colors.white70,
              iconcolor: Colors.orange,
              title: " WishList",
              iconData: Icons.favorite_outlined),
          bottomNavigationBar(
              backgroundcolor: Colors.green,
              color: Colors.white70,
              iconcolor: Colors.orange,
              title: " Go to Cart",
              iconData: Icons.shopping_bag_rounded),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 221, 188, 56),
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Product Overview',
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Fresh Basil"),
                        subtitle: Text("₹16"),
                      ),
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(40),
                        child: Image.network(
                            'http://assets.stickpng.com/thumbs/58bf1e2ae443f41d77c734ab.png'),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: double.infinity,
                        child: Text(
                          "Available Options",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.green[700],
                                ),
                                Radio(
                                  value: SigninCharacter.fill,
                                  groupValue: _character,
                                  activeColor: Colors.green[700],
                                  onChanged: (value) {
                                    setState(() {
                                      _character = value as SigninCharacter;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Text("₹16"),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueGrey),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "ADD",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ))),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About This Product',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Basil, also called great basil, is a culinary herb of the family Lamiaceae. It is a tender plant, and is used in cuisines worldwide. In Western cuisine, the generic term "basil" refers to the variety also known as sweet basil or Genovese basil. Basil is native to tropical regions from Central Africa to Southeast Asia.',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
