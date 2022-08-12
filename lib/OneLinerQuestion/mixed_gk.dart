import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MixedGkScreen extends StatelessWidget {
//  static const routeName = '/sub-category-screen';
  @override
  Widget build(BuildContext context) {
    var category = [
      'नदियां',
      'श्रेणी',
      'चोटी',
      'ग्लेशियर',
      'घाटी',
      'दर्रा',
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Mixed GK"),
      ),
      body: ListView.builder(
        itemCount: category.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              SubCategoryTiles(
                titleText: Center(
                  child: Text(
                    category[index],
                    textAlign: TextAlign.center,
                  ),
                ),
                onTapHandler: () {
                  if (index == 0) {
                    Navigator.of(context).pushNamed('/Category-Three');
                  }
                  if (index == 1) {
                    Navigator.of(context).pushNamed('/Category-Two');
                  }
                },
              ),
              DividerLine(),
            ],
          );
        },
      ),
    );
  }
}

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

class SubCategoryTiles extends StatelessWidget {
  SubCategoryTiles({
    required this.titleText,
    required this.onTapHandler,
  });

  final Widget titleText;

  final Function onTapHandler;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.group,
            color: Colors.deepOrange,
          ),
        ),
        title: titleText,
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          onTapHandler;
        });
  }
}
