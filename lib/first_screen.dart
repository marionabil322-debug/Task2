import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff6094e8), Color(0xffd85dbd)],
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                'assets/photo_5861993720792681268_x.jpg',
                width: 80,
                height: 80,
              ),
            ),
          ),
          SizedBox(height: 24),
          Text(
            "This is a simple text",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
