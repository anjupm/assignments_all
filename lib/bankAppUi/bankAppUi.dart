import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Bankapp(),
    debugShowCheckedModeBanner: false,
  ));
}

class Bankapp extends StatelessWidget {
  const Bankapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome! Anju",
        ),
        titleSpacing: 60,
        elevation: 0,
        leading: const Icon(Icons.menu, size: 30),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.qr_code_scanner_outlined, size: 30),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 3)
                      ],
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25, left: 15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border:
                                  Border.all(width: 2, color: Colors.red)),
                              child: const CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/icons/playpop.jpg"),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 50,
                          left: 130,
                          child: Text(
                            "SAMMUNATI BACHAT KHATA",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Positioned(
                          top: 69,
                          left: 130,
                          child: Text(
                            "NPR.",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent,
                                fontSize: 17),
                          ),
                        ),
                        const Positioned(
                          top: 68,
                          left: 165,
                          child: Text(
                            "100999.35",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        const Positioned(
                          top: 66,
                          left: 260,
                          child: Icon(
                            Icons.remove_red_eye,
                            color: Colors.blue,
                          ),
                        ),
                        const Positioned(
                          top: 89,
                          left: 130,
                          child: Text(
                            "225335621554226",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                        const Positioned(
                          top: 80,
                          left: 165,
                          child: Text(
                            ".",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 60),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.energy_savings_leaf_outlined,
                    color: Colors.red,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "WOULD YOU LIKE TO ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Accountsection(),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.energy_savings_leaf_outlined,
                    color: Colors.red,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "LAST TRANSACTIONS",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Lasttransactions(),
          ],
        ),
      ),
    );
  }
}

class Accountsection extends StatelessWidget {
  List Imagesss = [
    "assets/icons/BankAccount2.png",
    "assets/icons/Eseva.png",
    "assets/icons/BankPayment.webp",
    "assets/icons/BankTransfer.png",
    "assets/icons/Bankschedulepayment.webp",
    "assets/icons/Bank qr.png"
  ];
  List Details = [
    "My Account",
    "Load eSewa",
    "Payment",
    "Fund Transfer",
    "Schedule\nPayment",
    "Scan To Pay"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Imagesss.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(3.0),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Image(
                        image: AssetImage(
                          Imagesss[index],
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1, left: 1),
                    child: Text(
                      Details[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Lasttransactions extends StatelessWidget {
  var Amounts = ["NPR. 10,000.00", "NPR. 11,000.00", "NPR. 12,000.00"];
  var Dates = ["10-06-2019", "03-02-2019", "19-08-2019"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Dates.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 3)
                  ]),
              height: 90,
              child: SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: ListTile(
                    title: const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "CWDR/\n98626327552659257625",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 4),
                      child: Text(
                        Dates[index],
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    trailing: Text(
                      Amounts[index],
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 90,
              width: 12,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}