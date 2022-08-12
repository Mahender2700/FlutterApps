import 'package:flutter/material.dart';

class History extends StatelessWidget {
  List<String> history = [
    'Himachal Pradesh',
    'Shimla',
    'Solan',
    'Sirmaur',
    'Hamirpur',
    'Bilaspur',
    'Mandi',
    'Kullu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History of Himachal'),
      ),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(history[index]),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
