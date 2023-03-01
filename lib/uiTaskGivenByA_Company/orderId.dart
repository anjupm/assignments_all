import 'package:flutter/material.dart';

class OrderId extends StatelessWidget {
  var num = ["28",
    "26",
    "57",
    "14",
    "14",
    "14",
    "14",
    "14",
    "14",
    "23"];
  var id = [
    "2232563",
    "2232563",
    "2232563",
    "2232563",
    "2232563",
    "2232563",
    "2232563",
    "2232563",
    "2232563",
    "2232563",
  ];
  var date = [
    "12 Dec 2022",
    "22 Sep 2022",
    "26 Nov 2022",
    "12 Oct 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                        border:
                        Border.all(width: 1, color: Colors.grey.shade400)),
                    width: 65,
                    height: 30,
                    child: const Center(child: Text("All")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                        border:
                        Border.all(width: 1, color: Colors.grey.shade400)),
                    width: 110,
                    height: 30,
                    child: const Center(child: Text("Direct Reward")),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                        border:
                        Border.all(width: 1, color: Colors.grey.shade400)),
                    width: 120,
                    height: 30,
                    child: Center(
                      child: Text(
                        "Indirect Reward",
                        style: TextStyle(color: Colors.blue.shade700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: num.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Text(num[index],style: TextStyle(fontSize: 22,color: Colors.blue.shade700,fontWeight: FontWeight.bold),),
                        title: Row(
                          children: [
                            const Text("OrderID - ",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(
                              id[index],
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              const Text("Valid till",style: TextStyle(color: Colors.grey)),
                              Text(date[index],style: const TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}