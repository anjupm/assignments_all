import 'package:flutter/material.dart';

class GridStack extends StatelessWidget {
  GridStack({Key? key}) : super(key: key);
  var images = [
    "assets/icons/canada.webp",
    "assets/icons/England.jpg",
    "assets/icons/france.jpg",
    "assets/icons/italy.jpg",
    "assets/icons/italy.jpg",
    "assets/icons/russia.jpg",
    "assets/icons/USA.jpg",
    "assets/icons/italy.jpg",
  ];
  var names = [
    "Canada",
    "England",
    "France",
    "Italy",
    "Russia",
    "USA",
    "Germany",
    "Germany"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Grid with stack UI"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 5)
                        ]),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(images[index], fit: BoxFit.cover))),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Text(
                    names[index],
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
