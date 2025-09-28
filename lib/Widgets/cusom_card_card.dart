import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(1),
                spreadRadius: 0,
                offset: Offset(10, 5),
              ),
            ],
          ),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HandBag LV',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$225',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Icon(Icons.favorite, color: Colors.red),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        /// الصورة طالعة فوق الكارت
        Positioned(
          right: 20,
          top: -40,
          child: Image.asset("assets/images/images.jpeg", height: 120),
        ),
      ],
    );
  }
}
