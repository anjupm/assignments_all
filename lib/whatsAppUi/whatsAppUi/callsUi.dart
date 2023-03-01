import 'package:flutter/material.dart';

class CallsUi extends StatelessWidget {
  const CallsUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              "Create call link",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            subtitle: const Text("Share a link for your Whatsapp Call"),
            leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(50)),
                child: Icon(Icons.link)),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Recent",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),
          callChild("Sheeja", "4 january, 6.32 pm", "assets/icons/chakochan.png", Icons.video_camera_back_rounded),
          callChild("Aju", "31/12/22, 12.47 pm", "assets/icons/pet1.jpg", Icons.video_camera_back_rounded),
          callChild("Sudhi", "(2) 19/12/22, 6.32 pm", "assets/icons/david beckham.jpg", Icons.video_camera_back_rounded),
          callChild("Anila", "4 january, 6.32 pm", "assets/icons/Dulquer.jpg", Icons.video_camera_back_rounded),
          callChild("Athira", "4 january, 6.32 pm", "assets/icons/prithvi.jpg", Icons.video_camera_back_rounded),
          callChild("Reshma", "4 january, 6.32 pm", "assets/icons/saniya.jpg", Icons.video_camera_back_rounded),
          callChild("Bindhu", "4 january, 6.32 pm", "assets/icons/profilepicture.jpg", Icons.video_camera_back_rounded),
          callChild("Beena", "4 january, 6.32 pm", "assets/icons/pet1.jpg", Icons.video_camera_back_rounded),
          callChild("Athri", "4 january, 6.32 pm", "assets/icons/pet1.jpg", Icons.video_camera_back_rounded),
          callChild("jeeva", "4 january, 6.32 pm", "assets/icons/pet1.jpg", Icons.video_camera_back_rounded),
          callChild("Vjay", "4 january, 6.32 pm", "assets/icons/pet1.jpg", Icons.video_camera_back_rounded),
          callChild("Surya", "4 january, 6.32 pm", "assets/icons/pet1.jpg", Icons.video_camera_back_rounded),
        ],
      ),
    );
  }
}

Widget callChild(String name, String description, String image,IconData icon) {
  return ListTile(
    title: Text(name,style: const TextStyle(fontSize: 18),),
    subtitle: Row(
      children: [
        const Icon(Icons.arrow_downward,size: 15,),
        Text(description),
      ],
    ),
    leading: Container(
      width: 50,
      height: 50,
      child: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
    ),
    trailing: Icon(icon),
  );
}
