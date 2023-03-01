import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatefulWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  var text = [
    "Privacy",
    "Purchase history",
    "Help & Support",
    "Settings",
    "Invite a friend",
    "Logout",
  ];

  var icon = [
    Icons.privacy_tip,
    Icons.history,
    Icons.help,
    Icons.settings_outlined,
    Icons.person_add_alt_1,
    Icons.logout_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 15),
                  height: 180,
                  width: 180,
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/icons/profilepicture.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: SvgPicture.asset("assets/svg/facebook.svg"),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: SvgPicture.asset("assets/svg/twitter.svg"),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: SvgPicture.asset("assets/svg/linkedin.svg"),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: SvgPicture.asset("assets/svg/github.svg"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Jerin",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "@webrror",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Mobile App Developer",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListChild(
                text: text,
                icon: icon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListChild extends StatelessWidget {
  List<String> text;
  List<IconData> icon;

  ListChild({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: text.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding:
              const EdgeInsets.only(left: 25.0, right: 25.0, top: 5, bottom: 5),
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[300]),
            child: ListTile(
              dense: true,
              title: Text(
                text[index],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              leading: Icon(icon[index]),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
        );
      },
    );
  }
}
