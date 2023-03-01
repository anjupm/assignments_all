
import 'package:assignments/uiTaskGivenByA_Company/datepage.dart';
import 'package:assignments/uiTaskGivenByA_Company/profilePage.dart';
import 'package:assignments/uiTaskGivenByA_Company/uploadPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List screens = [
    const Text('Home'),
    const DatePage(),
    const UploadPage(),
    const ProfilePage(),
  ];
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (tapindex) {
          setState(
                () {
              index = tapindex;
            },
          );
        },
        items:  const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard_rounded,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_page,
              ),
              label: '')
        ],
      ),
      body: screens[index],
    );
  }
}