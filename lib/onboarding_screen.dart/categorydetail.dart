import 'package:ecommerce/widget_cate.dart';
import 'package:flutter/material.dart';

class CategoryItemDetails extends StatelessWidget {
  final String category;

  final List<String> itemtitles;
  final List<String> itemprice;
  final List<Item> items;

  CategoryItemDetails({
    required this.category,
    required this.itemtitles,
    required this.items,
    required this.itemprice,
  });

  @override
  Widget build(BuildContext context) {
    List<String> categoryItems = [];

    for (int i = 0; i < itemtitles.length; i++) {
      if (itemtitles[i] == category) {
        categoryItems.add(itemtitles[i]);
        //categoryItems.add(itemprice[i]);
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('$category'),
        ),
        body: GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
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
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        'none',
                        height: 120,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        itemprice[itemtitles],
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
                        'Text',
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
        ));
  }
}
