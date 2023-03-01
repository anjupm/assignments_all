import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DetailsPage(),
  ));
}

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  margin: const EdgeInsets.only(left: 10.0,right: 10.0, top: 10.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Most Luxurious &",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Peaceful Natural Place",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                                size: 20,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow.shade600,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 80,
                        width: 2,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          height: 100,
                          width: 100,
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
                              child: Image.asset("assets/icons/canada.webp",
                                  fit: BoxFit.cover))),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "About Paces",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, left: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "It's known for tropical beaches, opulent royal palaces, ancient ruins and ornate temples displaying figures of Buddha. In Bangkok, the capital, an ultramodern cityscape rises next to quiet canalside communities and the iconic temples of Wat Arun, Wat Pho and the Emerald Buddha Temple ",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Special Fecilities",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("free wifi"),
                      Text("free wifi"),
                      Text("free wifi"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 250,
                    width: 350,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/icons/resort1.jpg",
                            fit: BoxFit.cover)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Our Packages",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 52,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: const [
                        Text("data"),
                        Spacer(),
                        Text("Booking"),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
