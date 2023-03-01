import 'package:flutter/material.dart';

import 'descriptionUi.dart';

void main() {
  runApp(
    const MaterialApp(
      home: tourismHomePage(),
    ),
  );
}

class tourismHomePage extends StatelessWidget {
  const tourismHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 35.0, right: 35, top: 35, bottom: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Places",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Popular",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const detailsPageUi()));
                },
                child: placesChild("assets/icons/USA.jpg", "Thailand")),
            const SizedBox(
              height: 10,
            ),
            placesChild("assets/icons/italy.jpg", "Italy"),
            const SizedBox(
              height: 10,
            ),
            placesChild("assets/icons/france.jpg", "Vietnam"),
            const SizedBox(
              height: 10,
            ),
            placesChild("assets/icons/England.jpg", "Japan"),
            const SizedBox(
              height: 10,
            ),
            placesChild("assets/icons/canada.webp", "Europe"),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Widget placesChild(String image, String placeName) {
  return Stack(
    children: [
      Container(
        height: 120,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
      Positioned(
        top: 45,
        left: 10,
        child: Text(
          placeName,
          style: const TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
