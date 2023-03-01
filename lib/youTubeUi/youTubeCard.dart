import 'package:flutter/material.dart';

class YouTubeCard extends StatelessWidget {
  const YouTubeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
                child: const Image(image: AssetImage("assets/icons/pet1.jpg")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
