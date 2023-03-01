import 'package:flutter/material.dart';

class GridCardUi extends StatelessWidget {
  GridCardUi({Key? key}) : super(key: key);

  var name = [
    "email",
    "phone",
    "mute",
    "message",
    "call",
    "home",
    "notifications",
    "contacts",
    "group"
        "email",
    "phone",
    "mute",
    "message",
    "call",
    "home",
    "notifications",
    "contacts",
    "group"
  ];
  var icons = [
    const Icon(Icons.email_outlined),
    const Icon(Icons.phone),
    const Icon(Icons.volume_mute),
    const Icon(Icons.message),
    const Icon(Icons.call),
    const Icon(Icons.home),
    const Icon(Icons.notification_add),
    const Icon(Icons.contact_phone),
    const Icon(Icons.people),
    const Icon(Icons.email_outlined),
    const Icon(Icons.phone),
    const Icon(Icons.volume_mute),
    const Icon(Icons.message),
    const Icon(Icons.call),
    const Icon(Icons.home),
    const Icon(Icons.notification_add),
    const Icon(Icons.contact_phone),
    const Icon(Icons.people),
  ];
  var colors = [
    Colors.red,
    Colors.pink,
    Colors.blue,
    Colors.grey,
    Colors.green,
    Colors.pink[200],
    Colors.pink[500],
    Colors.green[700],
    Colors.blueGrey,
    Colors.red,
    Colors.pink,
    Colors.blue,
    Colors.grey,
    Colors.green,
    Colors.pink[200],
    Colors.pink[500],
    Colors.green[700],
    Colors.blueGrey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Card UI"),
      ),
      body: GridView.builder(
          itemCount: name.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              mainAxisExtent: 80,
              crossAxisSpacing: 5),
          itemBuilder: (context, int index) {
            return Card(
              elevation: 5,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),

              color: colors[index],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icons[index],
                  Text(
                    name[index],
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            );
          }),
    );
  }
}
