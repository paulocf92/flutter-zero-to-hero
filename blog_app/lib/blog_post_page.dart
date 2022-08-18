import 'package:flutter/material.dart';

class BlogPostPage extends StatelessWidget {
  const BlogPostPage({
    super.key,
    required this.blogImage,
    required this.blogTitle,
    required this.blogSubtitle,
  });
  final String blogImage;
  final String blogTitle;
  final String blogSubtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          blogTitle,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.black.withOpacity(0.05),
              child: Image.asset(
                blogImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    blogSubtitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    'Mauris sollicitudin ullamcorper velit, quis pretium arcu tincidunt eget. Nullam a sapien eu neque blandit egestas et a tortor. Proin et rutrum odio. Nam a tristique felis, at faucibus dolor. Donec vitae elit laoreet, blandit libero in, accumsan justo. Phasellus ante elit, mattis non cursus a, lacinia at arcu. In pharetra libero dapibus mi consequat, nec pretium ipsum porta. Sed et nunc mattis, suscipit nisi ac, accumsan nisl. Etiam imperdiet viverra aliquet. Ut id nulla ut ante tempus dapibus id ut ex. Nulla in scelerisque diam. Donec semper felis ac lectus vulputate, id ultrices risus convallis. Aliquam consequat vehicula eleifend. Vestibulum a sem quis nibh ultrices sagittis. Suspendisse et tellus molestie, rutrum arcu vitae, tincidunt augue.',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
