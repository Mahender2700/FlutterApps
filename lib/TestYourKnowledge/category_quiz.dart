import 'package:flutter/material.dart';
import 'package:himachal_gk/TestYourKnowledge/quiz.dart';
import 'package:himachal_gk/style.dart';

import '../OneLinerQuestion/Category_Wise/category_wise_screen.dart';

class CategoryQuizScreen extends StatelessWidget {
  var category = [
    'नदियां',
    'श्रेणी',
    'चोटी',
    'ग्लेशियर',
    'घाटी',
    'दर्रा',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Quiz Screen'),
      ),
      body: ListView.builder(
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              SubCategoryTiles(
                titleText: Center(
                  child: Text(
                    category[index],
                    style: headingTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                onTapHandler: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Quiz()),
                      ),
                    );
                  }
                  if (index == 1) {}
                },
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
