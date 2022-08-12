import 'package:flutter/material.dart';
import 'package:himachal_gk/mcq/result_screen.dart';

class McqScreen extends StatelessWidget {
  const McqScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Choice Quiz'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Question 5/10',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Q.1 What is the Capital of India'),
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => ResultScreen()),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Go to results page',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Option 2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Option 3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'Option 4',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
