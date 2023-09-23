import 'package:ecommerce/HomePage.dart';
import 'package:ecommerce/favourite.dart';
import 'package:ecommerce/more.dart';
import 'package:ecommerce/onboarding_screen.dart/categorydetail.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Item> items = [
    Item(images: 'images/1.jpeg'),
    Item(images: 'images/2.jpeg'),
    Item(images: 'images/3.jpeg'),
    Item(images: 'images/4.jpeg'),
    Item(images: 'images/5.jpeg'),
    Item(images: 'images/6.jpeg'),
    Item(images: 'images/7.jpeg'),
    Item(images: 'images/8.jpeg'),
    Item(images: 'images/9.jpeg'),
    Item(images: 'images/10.jpeg'),
    Item(images: 'images/11.jpeg'),
    Item(images: 'images/12.jpeg'),
    Item(images: 'images/13.jpeg'),
    Item(images: 'images/14.jpeg'),
  ];
  final List<String> itemTitles = [
    'Orange',
    'Apple',
    'PineApple',
    'Mango',
    'Teabag',
    'Lipton tea bag',
    'Green Tea',
    'Grapes',
    'Anar',
    'Chickoo',
    'Apricot',
    'Apple',
    'Banana',
    'Corn',
  ];
  final List<String> itemprice = [
    '\$3',
    '\$5',
    '\$7',
    '\$10',
    '\$12',
    '\$15',
    '\$20',
    '\$25',
    '\$55',
    '\$75',
    '\$60',
    '\$40',
    '\$30',
    '\$40',
  ];

  final List<String> itemtitles = [
    'From Sea',
    'From Organic',
    'From Organic',
    'From Fresh & Organic',
    'From Ocean',
    'From Ocean',
    'From Sea',
    'From Sea',
    'From Fresh & Organic',
    'From Wild',
    'From Sea',
    'From Wild',
    'From Ocean',
    'From Fresh & Organic',
  ];
  int _currentIndex = 1;
  final PageController _pageController = PageController(initialPage: 0);

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Categories()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Favourite()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => More()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A4BA0),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 36,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 20, left: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hey, Halal',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color(0xFF2A4Ba0),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  blurRadius: 2,
                                )
                              ]),
                          child: Badge(
                            backgroundColor: Color(0xFFF9B023),
                            padding: EdgeInsets.all(6),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.shopping_bag_outlined,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(children: [
                      Text(
                        'Shop',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontStyle: FontStyle.normal),
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(children: [
                      Text(
                        'By Category',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: GridView.count(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 0.8,
                        shrinkWrap: true,
                        children: [
                          for (int i = 0; i < 14; i++)
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryItemDetails(
                                                  category: itemtitles[i],
                                                  itemprice: itemprice,
                                                  itemtitles: itemtitles,
                                                  items: items),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      child: Image.asset(
                                        "images/${i + 1}.jpeg", // Changed the image path
                                        height: 120,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        itemTitles[i],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        itemtitles[i],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xff150375),
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

class Item {
  final String images;
  Item({required this.images});
}
