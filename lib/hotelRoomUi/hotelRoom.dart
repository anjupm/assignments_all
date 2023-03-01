import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HotelRoom(),
  ));
}

class HotelRoom extends StatefulWidget {
  const HotelRoom({Key? key}) : super(key: key);

  @override
  State<HotelRoom> createState() => _HotelRoomState();
}


class _HotelRoomState extends State<HotelRoom> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/hotelroom3.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SafeArea(
                            child: Center(
                              child: Text(
                                "DETAIL",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              "Crowne Plaza",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 40),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 10,
                              left: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              "Kochi,Kerala",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 110,
                            margin: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 10),
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                            child: const Text(
                              "8.4/85 reviews",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.purple,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.purple,
                      ),
                      Spacer(),
                      Text(
                        "\$ 200",
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        "8 km to LuluMall",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "/per night",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 50,
                  margin: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      onPrimary: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: const Size(10, 40), //////// HERE
                    ),
                    onPressed: () {},
                    child: const Text("Book Now"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "DESCRIPTION",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Crown Plaza Kochi, Kerala, is an ideal staying place for both thrprofessional and leisure travelers from the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangments in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five_star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Crowne Plaza Kochi,Kerala",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
