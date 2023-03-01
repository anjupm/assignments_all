import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredUI extends StatelessWidget {
  const StaggeredUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Gridview UI"),
        leading: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: const [
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.5,
                child: Customwidget(
                  imageData: "assets/icons/England.jpg",
                  description: "20 jan 2013",
                  text: "Mysteries of the..",
                  height: 200,
                  place: "Carl Sagan",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Customwidget(
                  imageData: "assets/icons/canada.webp",
                  description: "19 jan 2013",
                  text: "An Empire State of..",
                  height: 300,
                  place: "Ernest Hemingway",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.6,
                child: Customwidget(
                  imageData: "assets/icons/france.jpg",
                  description: "10 may 2013",
                  text: "10 Tips for..",
                  height: 200,
                  place: "Vincent Van Gogh",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Customwidget(
                  imageData: "assets/icons/germany.webp",
                  description: "18 aug 2013",
                  text: "My Story of..",
                  height: 300,
                  place: "Stephen",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1.7,
                child: Customwidget(
                  imageData: "assets/icons/russia.jpg",
                  description: "20 sep 2013",
                  text: "My Imaginations..",
                  height: 200,
                  place: "Camerun",
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Customwidget(
                  imageData: "assets/icons/italy.jpg",
                  description: "23 oct 2013",
                  text: "The united states of..",
                  height: 300,
                  place: "Donald",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Customwidget extends StatelessWidget {
  final String? imageData;
  final String? text;
  final String? description;
  final double? height;
  final String? place;

  const Customwidget({
    Key? key,
    this.imageData,
    this.text,
    this.description,
    this.height,
    this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: height,
              width: double.infinity,
              child: Image.asset(
                imageData!,
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              text!,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(description!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(place!),
          ),
        ],
      ),
    );
  }
}
