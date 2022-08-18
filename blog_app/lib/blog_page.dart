import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black.withOpacity(0.05),
              ),
              height: 200.0,
              width: double.infinity,
              child: Image.asset(
                'images/rich.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Top 10 Tips to retire at 40 years old',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              'The best tips to retire early',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              width: 50.0,
              child: Divider(
                color: Colors.black,
                thickness: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
