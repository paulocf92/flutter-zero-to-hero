import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _themeSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: _themeSwitched ? Colors.yellow : Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
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
      ),
    );
  }
}
