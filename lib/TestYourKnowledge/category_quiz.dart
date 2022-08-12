import 'package:flutter/material.dart';
import 'package:himachal_gk/TestYourKnowledge/quiz.dart';

class CategoryQuizScreen extends StatelessWidget {
  const CategoryQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Quiz Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Quiz(),
                ),
              );
            },
            child: Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
