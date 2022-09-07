import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Result'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          const Expanded(
            child: Text(
              'You Scored',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          const Expanded(
            child: Text(
              '5/10',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: TextButton(
                        child: const Text('Retake Test'), onPressed: () {})),
                Expanded(
                    child: TextButton(
                        child: const Text('Share'), onPressed: () {})),
              ],
            ),
          )
        ],
      ),
    );
  }
}
