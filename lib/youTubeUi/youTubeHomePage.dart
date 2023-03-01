import 'package:assignments/youTubeUi/youTubeCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: YouTubeHomePage(),
  ));
}

class YouTubeHomePage extends StatelessWidget {
  const YouTubeHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            Icon(Icons.youtube_searched_for_rounded,color: Colors.white,size: 30,),
            Text("YouTube",style: TextStyle(color: Colors.white,fontSize: 24),),
          ],
        ),
        actions: const [
          Icon(Icons.cast,color: Colors.white,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.notifications_none,color: Colors.white,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.search,color: Colors.white,size: 30,),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        children: [
          YouTubeCard(),
        ],
      ),
    );
  }
}
