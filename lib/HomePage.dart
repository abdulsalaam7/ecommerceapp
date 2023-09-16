// ignore_for_file: file_names, duplicate_ignore

import 'package:ecommerce/widget_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A4BA0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 36,
              ),
              Container(
                padding: const EdgeInsets.only(right: 20, left: 15, top: 10),
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
                height: 30,
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xff150375),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(children: [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintText: 'Search Products or store',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none),
                    ),
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WidgetHome(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
