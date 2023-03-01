import 'package:flutter/material.dart';

import 'detailsPage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var images = [
    "assets/icons/canada.webp",
    "assets/icons/England.jpg",
    "assets/icons/italy.jpg",
    "assets/icons/italy.jpg",
  ];

  var place = [
    "Nature look",
    "Furious places"
        "Luxury places",
    "Nature look",
    "Furious places"
        "Luxury places"
  ];
  var price = [
    "\$250",
    "\$300",
    "\$450",
    "\$400",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.read_more_outlined,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            children: const [
              Center(
                child: Text(
                  "Go",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Fast",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/icons/pet1.jpg",
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: SizedBox(
                width: 400,
                height: 100,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search here",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Text(
                    "Popular Places",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 11,
                          crossAxisSpacing: 8),
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Stack(
                        children: [
                          Container(
                              height: 250,
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
                            left: 15,
                            child: Text(
                              place[index],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 15,
                            child: Container(
                              color: Colors.blue,
                              height: 30,
                              width: 60,
                              child: Center(
                                child: Text(
                                  price[index],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  DetailsPage(),
                ),
              );
            }, child: Text("Explore Now")),

          ],
        ),
      ),
    );
  }
}
