import 'package:flutter/material.dart';

void main() {
  runApp(storeapp());
}

class storeapp extends StatelessWidget {
  const storeapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false);
  }
}
