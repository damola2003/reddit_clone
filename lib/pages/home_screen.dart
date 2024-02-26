import 'package:flutter/material.dart';
import 'package:reddit_clone/widgets/sign_in_button.dart';
// import 'package:flutter/widgets.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const CircleAvatar(
          backgroundImage: AssetImage("lib/pictures/redditlogo.jpg"),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 36,
            ),
            const Text(
              "Dive into anything",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  letterSpacing: 0.5),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              height: 350,
              width: 600,
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  "lib/pictures/teddybear.jpg",
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SignInButton()
          ],
        ),
      ),
    );
  }
}
