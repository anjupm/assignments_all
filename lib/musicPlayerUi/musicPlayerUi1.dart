import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MusicPlayerUi1(),
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
  ));
}

class MusicPlayerUi1 extends StatelessWidget {
  const MusicPlayerUi1({Key? key}) : super(key: key);

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
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.pink.shade100,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: Colors.pink.shade100,
            ),
            label: "",
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text(
                    "Musify.",
                    style: TextStyle(
                        color: Colors.pink.shade100,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Suggested Playlists",
                    style: TextStyle(color: Colors.pink.shade100, fontSize: 20,fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 200,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    playListChild("assets/icons/music3.jpg"),
                    const SizedBox(
                      width: 10,
                    ),
                    playListChild("assets/icons/mu.jpg"),
                    const SizedBox(
                      width: 10,
                    ),
                    playListChild("assets/icons/music4.jpg"),
                    const SizedBox(
                      width: 10,
                    ),
                    playListChild("assets/icons/music3.jpg"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(color: Colors.pink.shade100, fontSize: 20,fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    recommendedWidget("Hero", "Taylor swift","assets/icons/taylor.jpg"),
                    recommendedWidget("Unholy", "Sam Smith,kim petras","assets/icons/sam.jpg"),
                    recommendedWidget("Lift Me Up", "Rihana","assets/icons/rihanna.jpg"),
                    recommendedWidget("Depression", "Dax","assets/icons/dax.jpg"),
                    recommendedWidget("Iam Good", "David Guetta & Bebe Rexha","assets/icons/david.jpg"),
                    recommendedWidget("Lift Me Up", "Rihana","assets/icons/rihanna.jpg"),
                    recommendedWidget("Lift Me Up", "Rihana","assets/icons/rihanna.jpg"),
                    recommendedWidget("Unholy", "Sam Smith,kim petras","assets/icons/sam.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget playListChild(String image) {
  return Container(
    width: 200,
    height: 50,
    child: Card(
      shadowColor: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    ),
  );
}

Widget recommendedWidget(String songName, String description, String image) {
  return Card(
    color: Colors.black,
    child: ListTile(
      title: Text(
        songName,
        style:  TextStyle(color: Colors.pink.shade100,fontSize: 17,fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        description,
        style: const TextStyle(
          color: Colors.white,fontSize: 15,
        ),
      ),
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
      trailing: Wrap(
        children: [
          Icon(
            Icons.star_border,
            color: Colors.pink.shade100,
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            Icons.play_for_work,
            color: Colors.pink.shade100,
          ),
        ],
      ),
    ),
  );
}
