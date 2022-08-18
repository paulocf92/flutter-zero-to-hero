import 'package:flutter/material.dart';

Widget widgetPost(
        {required String imagePath,
        required String title,
        required String subtitle}) =>
    Column(
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
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
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
        const SizedBox(height: 20.0),
      ],
    );
