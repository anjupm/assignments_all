
import 'package:assignments/uiTaskGivenByA_Company/home.dart';
import 'package:flutter/material.dart';

import 'invoicePage.dart';

class DatePage extends StatefulWidget {
  const DatePage({Key? key}) : super(key: key);

  @override
  State<DatePage> createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  BoxShadow(color: Colors.grey, blurRadius: 3)
                ]),
            child: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(
                "Select invoice date",
                style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 10),
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Eg: Dec 12,2022",
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(children: const [
                          Icon(Icons.book_outlined),
                          Icon(Icons.arrow_drop_down),
                        ]),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                "Enter the amount",
                style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Eg: 2500",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Center(
                child: Container(
                  height: 250,
                  width: 250,
                  child: const Image(
                    image: AssetImage("assets/icons/uiTaskIcon.jpg"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 25),
              child: Row(
                children: [
                  SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const InvoicePage()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white, elevation: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Colors.black,
                                size: 18,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text("Next"),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                              ),
                            ],
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}