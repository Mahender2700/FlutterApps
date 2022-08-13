import 'package:flutter/material.dart';
import 'package:himachal_gk/KnowYourState/currentAffairs/current_affairs_month_list.dart';

import '../../mcq/mcq_screen.dart';

class CurrentAffairs extends StatelessWidget {
  List<String> selectGKyear = [
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
    '2017',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Affairs'),
      ),
      body: ListView.builder(
        itemCount: selectGKyear.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(selectGKyear[index]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => CurrentAffairsMonth()),
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
