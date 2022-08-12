import 'package:flutter/material.dart';

class FactGK extends StatelessWidget {
  List<String> factsgk = [
    'Cabinate',
    'First in Himachal',
    'Famous Personality',
    'Books and Author',
    'Yojnayein',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facts of Himachal'),
      ),
      body: ListView.builder(
        itemCount: factsgk.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(factsgk[index]),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
