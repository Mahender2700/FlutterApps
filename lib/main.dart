import 'package:flutter/material.dart';
import 'package:himachal_gk/TestYourKnowledge/category_quiz.dart';
import 'package:himachal_gk/TestYourKnowledge/district_wise_quiz.dart';
import 'package:himachal_gk/TestYourKnowledge/mixed_quiz.dart';
import 'KnowYourState/currentAffairs/current_affairs_Screen.dart';
import 'KnowYourState/facts_gk_screen.dart';
import 'KnowYourState/history/history_screen.dart';
import 'OneLinerQuestion/Category_Wise/category_wise_screen.dart';
import 'OneLinerQuestion/district_wise_screen.dart';
import 'OneLinerQuestion/MixedGK/mixed_gk.dart';
import 'OneLinerQuestion/subCategory_screen.dart';
import 'home_screen.dart';
import 'mcq/result_screen.dart';

void main() {
  runApp(HpGk());
}

class HpGk extends StatelessWidget {
  const HpGk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.deepOrange,
          )),
      home: HomeScreen(),
      initialRoute: '/',
      routes: {
        //KnowYourState
        '/CurrentAffairs': (ctx) => CurrentAffairs(),
        '/History': (ctx) => History(),
        '/FactGK': (ctx) => FactGK(),

        '/ResultScreen': (context) => ResultScreen(),
        //OneLiner Question
        '/CategoryWiseScreen': (ctx) => CategoryWiseScreen(),
        '/DisttWiseScreen': (ctx) => DisttWiseScreen(),
        '/MixedGkScreen': (ctx) => MixedGkScreen(),
        // TestYourKnowledge
        '/CategoryQuiz': (ctx) => CategoryQuizScreen(),
        '/DisttWiseQuiz': (ctx) => DistrictWiseQuizScreen(),
        '/MixedQuiz': (ctx) => MixedQuizScreen(),
      },
    );
  }
}
