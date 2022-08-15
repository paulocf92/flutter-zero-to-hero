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
        backgroundColor: Colors.redAccent.shade400,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Image.asset("images/plane.png"),
                  ),
                  const SizedBox(height: 50.0),
                  const Text(
                    "TRAVEL APP",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_city,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          print('Stays');
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(200.0, 50.0),
                        ),
                        child: const Text('Stays'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.airplanemode_on,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          print('Flight');
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(200.0, 50.0),
                        ),
                        child: const Text('Flight'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.car_rental,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          print('Cars');
                        },
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          foregroundColor: Colors.white,
                          minimumSize: const Size(200.0, 50.0),
                        ),
                        child: const Text('Cars'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.directions_boat,
                        color: Colors.white,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          print('All-inclusive Vacations');
                        },
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.redAccent.shade400,
                          backgroundColor: Colors.white,
                          minimumSize: const Size(200.0, 50.0),
                        ),
                        child: const Text('All-inclusive Vacations'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
