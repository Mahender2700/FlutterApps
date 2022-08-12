import 'package:flutter/material.dart';

import 'package:himachal_gk/Model/question_model.dart';

class BilaspurGK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<QuestionCategory> questionCategory = [
      QuestionCategory(
          question: 'नाको झील किस जिले में है?', correctAnswer: 'किन्नौर'),
      QuestionCategory(
          question: 'प्रसिद्ध झील रिवालसर किस जिले में स्थित है?',
          correctAnswer: 'मण्डी'),
      QuestionCategory(
          question:
              'कमरूनाग झील मण्डी जिले में स्थित है, तहसील जहाँ यह स्थित है-',
          correctAnswer: 'चच्योट'),
      QuestionCategory(
          question: 'रेणुका झील किस जिले में स्थित है?',
          correctAnswer: 'सिरमौर'),
      QuestionCategory(
          question: 'महाकाली झील हिमाचल प्रदेश के किस जिले में स्थित है?',
          correctAnswer: 'चम्बा'),
      QuestionCategory(
          question: 'लामा झील किस जिले में स्थित है?',
          correctAnswer: 'चम्बा में'),
      QuestionCategory(
          question: 'डल लेक हिमाचल प्रदेश के किस जिले में है?',
          correctAnswer: 'काँगड़ा में'),
      QuestionCategory(
          question: 'हिमाचल प्रदेश की सबसे बड़ी झील कौन-सी',
          correctAnswer: 'गोविन्द सागर'),
      QuestionCategory(
          question: 'दशहर झील कहाँ स्थित है?',
          correctAnswer: 'मंडाली के पास (कुल्लू)'),
      QuestionCategory(
          question: 'सूरजताल झील हिमाचल प्रदेश के किस जिले में स्थित है?',
          correctAnswer: 'लाहौल-स्पीति'),
      QuestionCategory(
          question: 'सरवालसर और भृगु झीलें किस जिले में स्थित है?',
          correctAnswer: 'कुल्लू'),
      QuestionCategory(
          question: 'करेरी झील किस जिले में स्थित है?',
          correctAnswer: 'काँगड़ा'),
      QuestionCategory(
          question: 'गोविन्द सागर झील के निकटतम कौन - सा जिला मुख्यालय है?',
          correctAnswer: 'बिलासपुर'),
      QuestionCategory(
          question: 'सूरजताल व चंद्रताल क्या है?',
          correctAnswer: 'प्राकृतिक झीलें'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('बिलासपुर सामान्य ज्ञान'),
      ),
      body: ListView.builder(
        itemCount: questionCategory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Q.${index + 1} ${questionCategory[index].question}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // color: Colors.black,
              ),
            ),
            subtitle: Text(
              'Ans: ${questionCategory[index].correctAnswer}',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
