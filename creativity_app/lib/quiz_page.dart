import 'dart:math';

import 'package:flutter/material.dart';

class TileInfo {
  TileInfo({
    required this.title,
    required this.color,
  });

  String title;
  Color color;
}

int score = 0;

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentPage = 0;
  List<bool?> boolToShow = List.generate(10, (index) => Random().nextBool());
  List<bool?> boolCheckList = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    bool matched = true;
    List<TileInfo> tileInfoList = [
      TileInfo(title: 'Red', color: Colors.red),
      TileInfo(title: 'Blue', color: Colors.blue),
      TileInfo(title: 'Green', color: Colors.green),
      TileInfo(title: 'Orange', color: Colors.orange),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Quiz'),
      ),
      body: currentPage == 0
          ? SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Select the red square',
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  ...List.generate(
                    tileInfoList.length,
                    (index) => _customListTile(
                      title: tileInfoList[index].title,
                      color: tileInfoList[index].color,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            )
          : SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Check only yes tile',
                    style: TextStyle(fontSize: 25),
                  ),
                  const Spacer(),
                  ...List.generate(
                    boolCheckList.length,
                    (index) {
                      for (int i = 0; i < boolCheckList.length; i++) {
                        if (boolToShow[index] != boolCheckList[index]) {
                          matched = false;
                        }
                      }
                      return CheckboxListTile(
                        value: boolCheckList[index],
                        onChanged: (checked) {
                          setState(() {
                            boolCheckList[index] = checked;
                          });
                        },
                        title: Text(boolToShow[index]! ? 'YES' : 'NO'),
                      );
                    },
                  ),
                  Text(matched ? 'This is RIGHT' : 'This is false'),
                  const Spacer(),
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
        onTap: () {
          if (color == Colors.red) {
            score = 1;
          } else {
            score = 0;
          }

          setState(() {
            currentPage++;
          });
        },
      );
}
