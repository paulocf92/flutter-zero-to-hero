import 'package:flutter/material.dart';

Widget widgetPost1() => Column(
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
        const SizedBox(height: 20.0),
      ],
    );

Widget widgetPost2() => Column(
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
            'images/house.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'How to purchase a property in 5 steps',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text(
          'You must acknowledge this before shopping',
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
        const SizedBox(height: 20.0),
      ],
    );

Widget widgetPost3() => Column(
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
            'images/apps.png',
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          '7 Apps to increase productivity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text(
          'These apps will boost your daily tasks',
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
        const SizedBox(height: 20.0),
      ],
    );
