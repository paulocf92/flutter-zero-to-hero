import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _themeSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
        backgroundColor: _themeSwitched ? Colors.green : Colors.pink,
      ),
      body: Center(
        child: GestureDetector(
          child: Image.asset('images/win.png'),
          onTap: () {
            setState(() {
              _themeSwitched = !_themeSwitched;
            });
          },
        ),
      ),
    );
  }
}
