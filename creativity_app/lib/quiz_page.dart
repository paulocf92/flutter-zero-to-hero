import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Quiz'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Select the red square'),
            _customListTile(title: 'Red', color: Colors.red),
            _customListTile(title: 'Blue', color: Colors.blue),
            _customListTile(title: 'Green', color: Colors.green),
            _customListTile(title: 'Orange', color: Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _customListTile({
    required String title,
    required Color color,
  }) =>
      ListTile(
        title: Text(title),
        tileColor: color,
        // onTap: () {},
      );
}
