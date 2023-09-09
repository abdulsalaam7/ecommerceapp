// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: Colors.red,
          )
        ],
      ),
    ));
  }
}
