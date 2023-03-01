import 'package:flutter/material.dart';

class profileUsingStack extends StatelessWidget {
  const profileUsingStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Profile")),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.more_vert_outlined)],
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/icons/russia.jpg",
            width: 400,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[350]),
                    child: const Icon(Icons.message)),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: Colors.blueAccent, width: 3)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image.asset(
                        "assets/icons/david beckham.jpg",fit: BoxFit.cover,
                      )),
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[350]),
                    child: const Icon(Icons.add)),
              ],
            ),
          ),

          const Positioned(
            bottom: 380,
            left: 110,
            child: Text(
              "David Beckham",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Center(
              child: Text(
            "Model/Super Star",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          )),
        ],
      ),
    );
  }
}
