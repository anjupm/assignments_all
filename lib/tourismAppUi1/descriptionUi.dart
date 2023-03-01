import 'package:flutter/material.dart';

class detailsPageUi extends StatelessWidget {
  const detailsPageUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: const Image(
                    image: AssetImage("assets/icons/thailand.jpg"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 30,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Thailand",
                        style: TextStyle(fontSize: 35),
                      )),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Thailand is a Southeast Asian country. It's known for tropical beaches, opulent royal palaces, ancient ruins and ornate temples displaying figures of Buddha. In Bangkok, the capital, an ultramodern cityscape rises next to quiet canalside communities and the iconic temples of Wat Arun, Wat Pho and the Emerald Buddha Temple (Wat Phra Kaew). Nearby beach resorts include bustling Pattaya and fashionable Hua Hin.",
                      style:TextStyle(fontSize: 18,color: Colors.grey,),),
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 35,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Places to visit",
                        style: TextStyle(fontSize: 25),
                      )),
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 150,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      placesToVisit("assets/icons/thailand1.webp"),
                      SizedBox(width: 10,),
                      placesToVisit("assets/icons/italy.jpg"),
                      SizedBox(width: 10,),
                      placesToVisit("assets/icons/USA.jpg"),
                      SizedBox(width: 10,),
                      placesToVisit("assets/icons/USA.jpg"),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget placesToVisit(String image){
  return Container(
    width: 200,
    height: 50,
    margin: EdgeInsets.only(bottom: 10),
    child: Card(
      shadowColor: Colors.black,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    ),
  );
}
