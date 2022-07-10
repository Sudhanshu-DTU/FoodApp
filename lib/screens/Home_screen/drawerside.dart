import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/Home_screen/home_screen.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile(
      {required String title,
      required IconData iconData,
      required Function onTap}) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        iconData,
        size: 28,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 43,
                      backgroundColor: Colors.white54,
                      child: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        backgroundImage: NetworkImage(
                          "https://s3.envato.com/files/328957910/vegi_thumb.png",
                        ),
                        radius: 40,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome Guest'),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('LogIn'),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue)),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            listTile(
                iconData: Icons.home_outlined, title: "Home", onTap: () {}),
            listTile(
                iconData: Icons.shop_outlined,
                title: "Review Cart",
                onTap: () {}),
            listTile(
                iconData: Icons.person_outlined,
                title: "My Profile",
                onTap: () {}),
            listTile(
                iconData: Icons.notifications_outlined,
                title: "Notification",
                onTap: () {}),
            listTile(
                iconData: Icons.star_outline,
                title: "Rating & Review",
                onTap: () {}),
            listTile(
                iconData: Icons.favorite_outline,
                title: "Wishlist",
                onTap: () {}),
            listTile(
                iconData: Icons.copy_outlined,
                title: "Raise a Complaint",
                onTap: () {}),
            listTile(
                iconData: Icons.format_quote_outlined,
                title: "FAQs",
                onTap: () {}),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Developer Support:",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Sudhanshu Jha',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("Call us:"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "9650670496",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Mail us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          " Sudhanshujha2717@gmail.com",
                          style: TextStyle(color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
