import 'dart:math';

import 'package:assignments/navDrawer/welcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Colors.red,
                Colors.pink,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: 30, top: 30, bottom: 30, right: 10),
                    height: 60,
                    width: 60,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  const WelcomePage(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/pet1.jpg"),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Terra Crowal",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "terra@gmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              itemName(Icons.developer_board, "Dashboard"),
              itemName(Icons.leaderboard, "Leads"),
              itemName(Icons.people, "Clients"),
              itemName(Icons.work, "Projects"),
              itemName(Icons.people, "Partners"),
              itemName(Icons.subscriptions, "Subscription"),
              itemName(Icons.payment, "Payments"),
              itemName(Icons.people_outline, "Users"),
              itemName(Icons.library_add, "Library"),
              Container(
                margin: const EdgeInsets.all(40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange.shade800,
                    onPrimary: Colors.white,
                    shadowColor: Colors.orangeAccent,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(10, 40), //////// HERE
                  ),
                  onPressed: () {},
                  child: const Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemName(
    IconData icon,
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 35.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 50),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
