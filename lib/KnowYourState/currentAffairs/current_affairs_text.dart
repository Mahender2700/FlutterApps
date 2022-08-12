import 'package:flutter/material.dart';

class CurrentAffairText extends StatelessWidget {
  const CurrentAffairText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HP GK 2022'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HP GK - May 2022 1st Week',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            Material(
              child: ListTile(
                title: Text('this is question One'),
                subtitle: Text('Answer'),
              ),
            ),

            // 2nd week
            Divider(),
            Text(
              'HP GK - May 2022 2nd Week',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            Material(
              child: ListTile(
                title: Text('this is question One'),
                subtitle: Text('Answer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
