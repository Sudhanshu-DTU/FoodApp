import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/Product_overview.dart/product_overview.dart';
import './single_product.dart';
import './drawerside.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Herbs Seasonings',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SingleProduct(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductOverview(),
                  ),
                );
              },
              productImage:
                  'http://assets.stickpng.com/thumbs/58bf1e2ae443f41d77c734ab.png',
              productName: 'Fresh Basil',
            ),
            SingleProduct(
                productImage:
                    'https://freepngimg.com/thumb/mint/28629-2-mint-thumb.png',
                productName: 'Fresh Mint',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'http://assets.stickpng.com/thumbs/58bf1e87e443f41d77c734b6.png',
                productName: 'Coriander',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'https://www.pngplay.com/wp-content/uploads/2/Ginger-PNG-Pic-Background.png',
                productName: 'Ginger',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                })
          ]
              // children: [

              // ],
              ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fresh Fruits',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SingleProduct(
              productImage:
                  'https://pngimg.com/uploads/watermelon/watermelon_PNG2654.png',
              productName: 'Watermelon',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductOverview()));
              },
            ),
            SingleProduct(
                productImage:
                    'https://www.freepnglogos.com/uploads/mango-png/mango-diy-skin-care-hacks-for-mangoes-mangoes-for-your-skin-2.png',
                productName: 'Mango',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'https://www.freepnglogos.com/uploads/grapes-png/grapes-dimidwa-12.png',
                productName: 'Grapes',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'https://freepngimg.com/thumb/banana/26-banana-png-image-bananas-picture-download-thumb.png',
                productName: 'Banana',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                })
          ]
              // children: [

              // ],
              ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Vegetables',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SingleProduct(
              productImage:
                  'https://freepngimg.com/save/830-potato-png-images/400x400',
              productName: 'Potato',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductOverview()));
              },
            ),
            SingleProduct(
                productImage:
                    'https://www.freepnglogos.com/uploads/tomato-png/tomato-puree-manufacturer-and-supplier-lemonconcentrate-3.png',
                productName: 'Tomato',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'https://www.freepnglogos.com/uploads/onion-png/onion-dropbox-encryption-with-truecrypt-russell-ballestrini-2.png',
                productName: 'Onion',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'https://down.imgspng.com/thumb.php?src=https://down.imgspng.com/download/0720/pea_PNG24299.png&h=300&w=300&zc=1',
                productName: 'Pea',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                })
          ]
              // children: [

              // ],
              ),
        ),
      ],
    );
  }

  Widget _buildreadyProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Miscellaneous',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            SingleProduct(
                productImage:
                    'https://www.seekpng.com/png/full/832-8322700_amul-butter-500g.png',
                productName: 'Amul Butter',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(),
                    ),
                  );
                }),
            SingleProduct(
                productImage:
                    'https://www.seekpng.com/png/full/832-8323147_7-off-amul-paneer-png.png',
                productName: 'Amul Paneer',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
                productImage:
                    'https://www.seekpng.com/png/full/269-2695750_more-views-amul-cheese-spread-200-gm.png',
                productName: 'Amul Cheese',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview()));
                }),
            SingleProduct(
              productImage:
                  'https://www.nicepng.com/png/full/249-2493370_patanjali-cow-ghee.png',
              productName: 'Ghee',
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductOverview()));
              },
            ),
          ]
              // children: [

              // ],
              ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffd6d382),
            child: Icon(
              Icons.search,
              size: 17,
              color: textColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              backgroundColor: Color(0xffd6d382),
              radius: 15,
              child: Icon(
                Icons.shop,
                size: 17,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi0Xg-k622Sbztlrb-L1o1CAla3zCbVc2lUw&usqp=CAU'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all vegetables products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildRootProduct(context),
            _buildFreshProduct(context),
            _buildHerbsProduct(context),
            _buildreadyProduct(context),
          ],
        ),
      ),
    );
  }
}
