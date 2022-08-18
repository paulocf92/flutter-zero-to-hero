import 'package:flutter/material.dart';
import 'widgets/post.dart';

class BlogPage extends StatelessWidget {
  BlogPage({super.key, required this.dataFromLoginPage});
  final String dataFromLoginPage;

  final List<Widget> blogPosts = [
    widgetPost(
      imagePath: 'images/rich.png',
      title: 'Top 10 Tips to retire at 40 years old',
      subtitle: 'The best tips to retire early',
    ),
    widgetPost(
      imagePath: 'images/house.png',
      title: 'How to purchase a property in 5 steps',
      subtitle: 'You must acknowledge this before shopping',
    ),
    widgetPost(
      imagePath: 'images/apps.png',
      title: '7 Apps to increase productivity',
      subtitle: 'These apps will boost your daily tasks',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          dataFromLoginPage,
          style: const TextStyle(
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
              ...blogPosts,
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
