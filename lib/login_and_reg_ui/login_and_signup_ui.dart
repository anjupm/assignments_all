import 'package:assignments/login_and_reg_ui/signup_page.dart';
import 'package:flutter/material.dart';

class LoginAndSignupPage extends StatefulWidget {
  const LoginAndSignupPage({Key? key}) : super(key: key);

  @override
  State<LoginAndSignupPage> createState() => _LoginAndSignupPageState();
}

class _LoginAndSignupPageState extends State<LoginAndSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/icons/icon1.png",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login to your existing account",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.account_box_sharp),
                        hintText: "Enter username",
                        labelText: "USERNAME",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    textInputAction: TextInputAction.next),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.visibility_off),
                        suffixIcon: const Icon(Icons.visibility),
                        hintText: "Enter password",
                        labelText: "PASSWORD",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    textInputAction: TextInputAction.done),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password?"),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("LOGIN"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "or connect using",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Wrap(
                      children: const [
                        Icon(Icons.facebook, size: 15),
                        SizedBox(
                          width: 5,
                        ),
                        Center(
                            child: Text(
                          "Facebook",
                          style: TextStyle(fontSize: 15),
                        )),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Wrap(
                      children: const [
                        Icon(
                          Icons.g_mobiledata_rounded,
                          size: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Center(
                            child: Text(
                          "Google",
                          style: TextStyle(fontSize: 15),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
