import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 2)
                ]),
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 55.0),
          child: Center(
            child: Text(
              "Account",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 4),
                        borderRadius: BorderRadius.circular(15)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: const Image(
                          image: AssetImage("assets/icons/Profile ui 2 image.webp"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Dennis Callis",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("denniscallismail@gmail.com"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.phone_android,
                        color: Colors.blue,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("7998652413"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Edit Profile")),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: ProfileInfo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  ProfileInfo({Key? key}) : super(key: key);

  final List _items = [
    Icon(
      Icons.wallet,
      color: Colors.blue.shade700,
    ),
    Icon(
      Icons.newspaper,
      color: Colors.blue.shade700,
    ),
    Icon(
      Icons.info,
      color: Colors.blue.shade700,
    ),
    Icon(
      Icons.logout,
      color: Colors.blue.shade700,
    ),
  ];

  var info = [
    "My wallet",
    "Terms and policies",
    "About",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: info.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: _items[index],
              title: Text(info[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
                size: 20,
              ),
            ),
          );
        });
  }
}