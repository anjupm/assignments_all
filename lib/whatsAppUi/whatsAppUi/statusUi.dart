import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.camera_alt_rounded),
      ),

      body: ListView(
        children: [
          ListTile(
            title: const Text("My status"),
            subtitle: const Text("Tap to add status update"),
            leading: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: const CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/pet1.jpg")),
                ),
                Positioned(
                  bottom: 0,
                  right: 1.0,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green.shade700,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Recent updates",
              style: TextStyle(color: Colors.grey.shade800),
            ),
          ),
          statusChild("Haritha","9 minutes ago","assets/icons/chakochan.png"),
          statusChild("Sneha","Today, 1.12 pm","assets/icons/david beckham.jpg"),
          statusChild("Salu","Today, 9.8 am","assets/icons/Dulquer.jpg"),
          statusChild("Anjali","Today, 8.38 am","assets/icons/pet1.jpg"),
          statusChild("Sandhya","Today, 8.3 am","assets/icons/prithvi.jpg"),
          statusChild("Veena","Yesterday, 10.13 pm","assets/icons/profilepicture.jpg"),
          statusChild("Remya","Yesterday, 10.14 pm","assets/icons/saniya.jpg"),
          statusChild("Asha","Yesterday, 8.13 pm","assets/icons/pet1.jpg"),
        ],
      ),
    );
  }
}
Widget statusChild(String name, String time,String image){
  return Container(
    child: ListTile(
      title:  Text(name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
      subtitle: Text(time),
      leading: Container(
        width: 50,
        height: 50,
        child: CircleAvatar(
            backgroundImage: AssetImage(image)),
      ),
    ),
  );
}
