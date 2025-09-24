import 'package:flutter/material.dart';
import 'package:store_app/screens/Home_page.dart';

void main() {
  runApp(const store_app());
}

class store_app extends StatelessWidget {
  const store_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomePage.id: (context) => const HomePage()},
      initialRoute: HomePage.id,
    );
  }
}
