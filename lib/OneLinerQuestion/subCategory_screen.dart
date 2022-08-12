import 'package:flutter/material.dart';

class subCategoryWiseScreen extends StatelessWidget {
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
        title: Text("Category Wise GK"),
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
                    // style: headingTextStyle,
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
                  // if (index == 2) {
                  //   Navigator.of(context).pushNamed('/Category-Three');
                  // }
                  // else {
                  //   print('page url not defined');
                  // }
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

class SubCategoryTiles extends StatelessWidget {
  const SubCategoryTiles({
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
      // onTap: onTapHandler,
    );
  }
}
