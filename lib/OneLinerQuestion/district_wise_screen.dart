import 'package:flutter/material.dart';
import '../style.dart';

class DisttWiseScreen extends StatelessWidget {
//  static const routeName = '/sub-category-screen';
  @override
  Widget build(BuildContext context) {
    var category = [
      'बिलासपुर',
      'कुल्लू',
      'चम्बा',
      'मण्डी',
      'हमीरपुर',
      'काँगड़ा',
      'ऊना',
      'लाहौल-स्पीति',
      'शिमला',
      'सोलन',
      'किन्नौर',
      'सिरमौर',
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("District Wise GK"),
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
                      style: headingTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTapHandler: () {
                    if (index == 0) {
                      Navigator.of(context).pushNamed('/BilaspurGK');
                    }
                    if (index == 1) {
                      Navigator.of(context).pushNamed('/ChambaGK');
                    }
                    if (index == 2) {
                      Navigator.of(context).pushNamed('/KangraGK');
                    }
                    if (index == 3) {
                      Navigator.of(context).pushNamed('/MandiGK');
                    }
                    if (index == 4) {
                      Navigator.of(context).pushNamed('/ShimlaGK');
                    }
                    if (index == 5) {
                      Navigator.of(context).pushNamed('/KinaurGK');
                    }
                    if (index == 6) {
                      Navigator.of(context).pushNamed('/LaholSpitiGK');
                    }
                    if (index == 7) {
                      Navigator.of(context).pushNamed('/UnnaGK');
                    }
                    if (index == 8) {
                      Navigator.of(context).pushNamed('/HamirpurGK');
                    }
                    if (index == 9) {
                      Navigator.of(context).pushNamed('/SolanGK');
                    }
                    if (index == 10) {
                      Navigator.of(context).pushNamed('/SirmourGK');
                    }
                    if (index == 11) {
                      Navigator.of(context).pushNamed('/KulluGK');
                    }
                  }),
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
        onTap: () {
          onTapHandler;
        });
  }
}
