import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MusicPlayer2(),
    ),
  );
}

class MusicPlayer2 extends StatelessWidget {
  MusicPlayer2({Key? key}) : super(key: key);

  var images = [
    "assets/icons/music1.jpg",
    "assets/icons/music2.webp",
    "assets/icons/music3.jpg",
    "assets/icons/music4.jpg",
    "assets/icons/music5.jpg",
    "assets/icons/music6.jpg",
    "assets/icons/music7.jpg",
    "assets/icons/mu.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.pink.shade100,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.pink.shade100,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.pink.shade100,
            ),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.pink.shade100,
            ),
            label: "playlists",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.pink.shade100,
            ),
            label: "more",
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Text(
                    "Playlists",
                    style: TextStyle(color: Colors.pink.shade100, fontSize: 35),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 30.0, right: 15, left: 15),
                child: Center(
                  child: TextFormField(
                    style: TextStyle(color: Colors.pink.shade100),
                    cursorColor: Colors.pink.shade100,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade700,
                        hintStyle: TextStyle(color: Colors.pink.shade100),
                        suffixIcon:  Icon(Icons.search,color: Colors.pink.shade100,),
                        hintText: "Search...",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade100),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade100),
                          borderRadius: BorderRadius.circular(30),
                        ),),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                  itemCount: images.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,),
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(left: 15,right: 15),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              fit: BoxFit.cover, image: AssetImage(images[index])),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
