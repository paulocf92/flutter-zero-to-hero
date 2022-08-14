import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.coffee_rounded),
                Text("WELCOME"),
              ],
            ),
            Center(
              child: Image.asset("images/welcome.png"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
                foregroundColor: Colors.white,
                minimumSize: const Size(200.0, 40.0),
              ),
              child: const Text('Sign In'),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.deepOrangeAccent,
                backgroundColor: Colors.white,
                minimumSize: const Size(200.0, 40.0),
              ),
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
