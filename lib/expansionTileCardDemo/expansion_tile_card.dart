import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = GlobalKey();



  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      // appBar: AppBar(
      //   title: Text(widget.title!),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 10),
              child: Center(
                child: Text(
                  "EXPERIENCE",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Wrap(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Lottie.asset(
                          'assets/animations/41067-skyfall-ufo.json',
                          fit: BoxFit.cover,
                          width: 400,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 50),
                      child: ExpansionTileCard(
                        expandedTextColor: Colors.white,
                        baseColor: Colors.transparent,
                        expandedColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        key: cardA,
                        title: const Text(
                          'Flutter Internship!',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: const Text(
                          '6 months +',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        children: <Widget>[
                          const Divider(
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Course fee",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Course Duration",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Attendance",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Enquiry",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceAround,
                            buttonHeight: 52.0,
                            buttonMinWidth: 90.0,
                            children: <Widget>[
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardB.currentState?.expand();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Open',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardB.currentState?.collapse();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Close',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardB.currentState?.toggleExpansion();
                                },

                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.swap_vert,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Toggle',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Lottie.asset(
                          'assets/animations/41067-skyfall-ufo.json',
                          fit: BoxFit.cover,
                          width: 400,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 50),
                      child: ExpansionTileCard(
                        expandedTextColor: Colors.white,
                        baseColor: Colors.transparent,
                        expandedColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        key: cardB,
                        title: const Text(
                          'Android Training',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: const Text(
                          '2 months',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        children: <Widget>[
                          const Divider(
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Course fee",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Course Duration",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Attendance",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Enquiry",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceAround,
                            buttonHeight: 52.0,
                            buttonMinWidth: 90.0,
                            children: <Widget>[
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardC.currentState?.expand();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Open',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardC.currentState?.collapse();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Close',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardC.currentState?.toggleExpansion();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.swap_vert,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Toggle',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Wrap(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Lottie.asset(
                          'assets/animations/41067-skyfall-ufo.json',
                          fit: BoxFit.cover,
                          width: 400,
                          repeat: true,
                          reverse: true,
                          animate: true,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 10, right: 10, bottom: 10, top: 50),
                      child: ExpansionTileCard(
                        expandedTextColor: Colors.white,
                        baseColor: Colors.transparent,
                        expandedColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        key: cardC,
                        title: const Text(
                          'Java Training',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: const Text(
                          '2 months ',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        children: <Widget>[
                          const Divider(
                            thickness: 1.0,
                            height: 1.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Course fee",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Course Duration",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Attendance",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Enquiry",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.spaceAround,
                            buttonHeight: 52.0,
                            buttonMinWidth: 90.0,
                            children: <Widget>[
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardB.currentState?.expand();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Open',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardB.currentState?.collapse();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Close',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                style: flatButtonStyle,
                                onPressed: () {
                                  cardB.currentState?.toggleExpansion();
                                },
                                child: Column(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.swap_vert,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 2.0),
                                    ),
                                    Text(
                                      'Toggle',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
