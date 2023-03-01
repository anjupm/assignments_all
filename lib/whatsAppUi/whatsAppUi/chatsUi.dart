import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
      body: ListView(
        children: [
          chatChild(
              "Anitha", "description", "assets/icons/chakochan.png", "10.45 am"),
          chatChild("Binu", "description", "assets/icons/david beckham.jpg", "11 am"),
          chatChild(
              "Shiva", "description", "assets/icons/Dulquer.jpg", "11.30 am"),
          chatChild(
              "Ajith", "description", "assets/icons/pet1.jpg", "11.50 am"),
          chatChild(
              "Anju", "description", "assets/icons/prithvi.jpg", "Yesterday"),
          chatChild(
              "Achu", "description", "assets/icons/pet1.jpg", "Yesterday"),
          chatChild(
              "Jishnu", "description", "assets/icons/saniya.jpg", "Yesterday"),
          chatChild(
              "Mittu", "description", "assets/icons/pet1.jpg", "Yesterday"),
          chatChild(
              "Varun", "description", "assets/icons/pet1.jpg", "Yesterday"),
          chatChild(
              "Athira", "description", "assets/icons/pet1.jpg", "Yesterday"),
          chatChild(
              "Vinu", "description", "assets/icons/pet1.jpg", "Yesterday"),
        ],
      ),
    );
  }
}

Widget chatChild(String name, String description, String image, String time) {
  return ListTile(
    title: Text(name,style: TextStyle(fontSize: 18),),
    subtitle: Text(description),
    leading: Container(
      width: 50,
      height: 50,
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
    ),
    trailing: Text(time),
  );
}
