import 'package:flutter/material.dart';
import 'package:himachal_gk/KnowYourState/currentAffairs/current_affairs_text.dart';

class CurrentAffairsMonth extends StatelessWidget {
  final List<String> selectGKMonth = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Affairs'),
      ),
      body: ListView.builder(
        itemCount: selectGKMonth.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(selectGKMonth[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => CurrentAffairsText()),
                    ),
                  );
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
