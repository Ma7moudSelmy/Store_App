import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
        centerTitle: true,
        title: Text("New Trend", style: TextStyle(color: Colors.black)),

        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
