import 'package:flutter/material.dart';

import '../style.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    required this.onTapHandler,
    required this.iconImg,
    required this.lebel,
  });
  final VoidCallback onTapHandler;
  final IconData iconImg;
  final String lebel;
  // final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.of(context).pushNamed('/CategoryWiseScreen');
      // },

      onTap: onTapHandler,

      child: Card(
        shadowColor: Colors.black,
        child: Container(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconImg,
                color: Colors.deepOrangeAccent,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                lebel,
                style: categoryTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
