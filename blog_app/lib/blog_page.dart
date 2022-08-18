import 'package:flutter/material.dart';
import 'widgets/post.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'The Blog',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widgetPost1(),
              widgetPost2(),
              widgetPost3(),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blueGrey[900],
                  minimumSize: const Size(double.infinity, 45),
                  elevation: 0,
                ),
                onPressed: () {
                  print("Terms and Conditions");
                },
                child: const Text("Terms and Conditions"),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  minimumSize: const Size(double.infinity, 45),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Sign Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
