
import 'package:assignments/uiTaskGivenByA_Company/orderId.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Rewards Wallet",
            style: TextStyle(color: Colors.blue.shade700),
          ),
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.blue.shade700,
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 10, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.blue.shade700),
                        width: 200,
                        height: 85,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 15.0, bottom: 10),
                              child: Text(
                                "Total Balance",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Row(
                                children: const [
                                  Text(
                                    "14,325",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                      child: Image(
                                          image: AssetImage(
                                              "assets/icons/UiTaskGold-Coin-PNG-Photo.png")),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey.shade100,
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1)),
                        width: 180,
                        height: 60,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 8.0, top: 5),
                                  child: Text(
                                    "Redemable",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                  ),
                                  child: Text(
                                    "points",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "1200",
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/icons/UiTaskGold-Coin-PNG-Photo.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 45,
                              width: 2,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 8.0, top: 5),
                                  child: Text(
                                    "Expired",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 8.0,
                                  ),
                                  child: Text(
                                    "points",
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "7508",
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/icons/UiTaskGold-Coin-PNG-Photo.png")),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                const SizedBox(
                    width: 110,
                    height: 110,
                    child: Image(
                        image:
                        AssetImage("assets/icons/uiTaskGiftImage2.webp"))),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: TabBar(
                  indicatorColor: Colors.blue.shade700,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.blue.shade700,
                  labelPadding: EdgeInsets.zero,
                  isScrollable: true,
                  tabs: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Tab(
                          child: Row(children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Icon(
                                Icons.card_giftcard_rounded,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Rewards",
                            )
                          ]),
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Tab(
                          child: Row(children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50.0),
                              child: Icon(
                                Icons.book_online,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Transactions",
                            )
                          ]),
                        )),
                  ],
                ),
              ),
            ),

            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  OrderId(),
                  // SingleChildScrollView(
                  //   child: OrderId(),
                  // ),

                  // second tab bar viiew widget
                  Container(
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
