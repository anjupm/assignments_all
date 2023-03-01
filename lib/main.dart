
import 'dart:async';
import 'package:assignments/whatsAppUi/whatsAppUi/whatsAppChats.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>  const WhatsAppChats()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.green, Colors.blue, Colors.yellow])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/icon1.png",
                width: 100,
                height: 100,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 40, color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
