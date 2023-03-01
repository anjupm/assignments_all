import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'homePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoginUi(),
    ),
  );
}

class LoginUi extends StatelessWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 55,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "-or-",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 50,
                width: 280,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade600,
                    ),
                    onPressed: () {},
                    child: Wrap(
                      children: const [
                        Text(
                          "Login with Facebook",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.facebook),
                      ],
                    ))),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 50,
                width: 280,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade400,
                    ),
                    onPressed: () {},
                    child: Wrap(
                      children: [
                        const Text(
                          "Login with Twitter",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          color: Colors.red,
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset("assets/svg/twitter.svg"),
                          ),
                        ),
                      ],
                    ))),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 50,
                width: 280,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    onPressed: () {},
                    child: Wrap(
                      children: const [
                        Text(
                          "Login with Google",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 45,
                        ),
                        Icon(Icons.g_mobiledata),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
