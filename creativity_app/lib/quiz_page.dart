import 'package:flutter/material.dart';

class TileInfo {
  TileInfo({
    required this.title,
    required this.color,
  });

  String title;
  Color color;
}

List<TileInfo> tileInfoList = [
  TileInfo(title: 'Blue', color: Colors.blue),
];

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
            ...List.generate(
              tileInfoList.length,
              (index) => _customListTile(
                title: tileInfoList[index].title,
                color: tileInfoList[index].color,
              ),
            ),
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
