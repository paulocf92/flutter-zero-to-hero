import 'package:flutter/material.dart';
import '../blog_post_page.dart';

Widget widgetPost({
  required String imagePath,
  required String title,
  required String subtitle,
  required BuildContext context,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlogPostPage(
                    blogImage: imagePath,
                    blogTitle: title,
                    blogSubtitle: subtitle,
                  ),
                ));
          },
          child: Container(
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
        ),
        const SizedBox(height: 10),
        InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: () {
            print(title);
          },
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
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
