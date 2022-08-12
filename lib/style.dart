import 'package:flutter/material.dart';

const headingTextStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.bold,
  color: Colors.purple,
);

const categoryTextStyle = TextStyle(
  fontSize: 12.0,
  color: Colors.black,
  
);

class DividerLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      endIndent: 20.0,
      indent: 20.0,
      color: Colors.black,
    );
  }
}
