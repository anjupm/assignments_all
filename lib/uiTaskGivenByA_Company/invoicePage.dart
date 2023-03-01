import 'package:flutter/material.dart';

import 'datepage.dart';

void main() {
  runApp(MaterialApp(
    home: InvoicePage(),
  ));
}

class InvoicePage extends StatefulWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 25),
            child: Text(
              "Enter the invoice number",
              style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 10),
            child: SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Eg: 256347865423",
                    labelText: "Invoice Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
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
            padding: const EdgeInsets.only(top: 180.0, left: 25),
            child: Row(
              children: [
                SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const DatePage()));
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
    );
  }
}