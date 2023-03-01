import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Hotelbooking(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Hotelbooking extends StatefulWidget {
  const Hotelbooking({Key? key}) : super(key: key);

  @override
  State<Hotelbooking> createState() => _HotelbookingState();
}

class _HotelbookingState extends State<Hotelbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      BottomNavigationBar(selectedItemColor: Colors.purple, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Explore")
      ]),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 110),
                child: Text(
                  "Hello Anju",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Text(
                "Find your favourite hotel",
                style: TextStyle(color: Colors.black, fontSize: 20),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(elevation: 5,
                child: Container(
                  height: 45,
                  width: 45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/icons/hotelroom1.jpg"),
                    ),
                  ),
                ),
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search for hotels",
                      hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                "Popular Hotel",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Popularhotels(),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "Hotel packages",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "View more",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Hotelpackages(),
          ],
        ),
      ),
    );
  }
}

class Popularhotels extends StatelessWidget {
  var Images = [
    "assets/icons/hotelroom1.jpg",
    "assets/icons/hotelroom2.webp",
    "assets/icons/hotelroom3.jpg",
    "assets/icons/resort1.jpg",
    "assets/icons/hotelroom1.jpg"
  ];

  var Names = [
    "Crown Plaza",
    "Presidency",
    "Grand Hyatt",
    "Marriott",
    "Taj Malabar"
  ];

  var Description = [
    "A four star hotel in \nkochi",
    "A five star hotel in \nkochi",
    "A four star hotel in \nkochi",
    "A five star hotel in \nkochi",
    "A four star hotel in \nkochi"
  ];

  var Rate = [
    "\$69/night",
    "\$99/night",
    "\$89/night",
    "\$109/night",
    "\$79/night"
  ];

  var Ratings = [
    Row(
      children: const [
        Text(
          "3.8",
          style: TextStyle(color: Colors.blue, fontSize: 12),
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.blue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "4.5",
          style: TextStyle(color: Colors.blue, fontSize: 12),
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.blue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "3.9",
          style: TextStyle(color: Colors.blue, fontSize: 12),
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.blue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "4.9",
          style: TextStyle(color: Colors.blue, fontSize: 12),
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.blue,
        )
      ],
    ),
    Row(
      children: const [
        Text(
          "3.9",
          style: TextStyle(color: Colors.blue, fontSize: 12),
        ),
        Icon(
          Icons.star,
          size: 18,
          color: Colors.blue,
        )
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: ListView.builder(
        itemCount: Images.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.white,
                elevation: 3,
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 129,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(Images[index]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          Names[index],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 135,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Text(
                          Description[index],
                          style:
                          const TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          Rate[index],
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    Positioned(bottom: 10, right: 2, child: Ratings[index]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Hotelpackages extends StatelessWidget {
  var Images = [
    "assets/icons/hotelroom1.jpg",
    "assets/icons/hotelroom1.jpg",
    "assets/icons/hotelroom1.jpg",
    "assets/icons/hotelroom1.jpg",
    "assets/icons/hotelroom1.jpg"
  ];
  var Names = [
    "Crown Plaza",
    "Presidency",
    "Grand Hyatt",
    "Marriott",
    "Taj Malabar"
  ];
  var Description = [
    "A four star hotel in kochi",
    "A five star hotel in kochi",
    "A four star hotel in kochi",
    "A five star hotel in kochi",
    "A four star hotel in kochi"
  ];
  var Rate = [
    "\$69/night",
    "\$99/night",
    "\$89/night",
    "\$109/night",
    "\$79/night"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: Images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(Images[index]))),
                  ),
                  Positioned(
                    left: 110,
                    top: 5,
                    child: Text(
                      Names[index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 110,
                    child: Text(
                      Description[index],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 110,
                    child: Text(
                      Rate[index],
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 25,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topLeft: Radius.circular(30)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Book"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 110,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.car_repair_rounded,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.wine_bar_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.wifi,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}