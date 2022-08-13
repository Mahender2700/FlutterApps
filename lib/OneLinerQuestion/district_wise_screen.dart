import 'package:flutter/material.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/chamba.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/hamirpur.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/kangra.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/kinaur.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/kullu.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/lahol_spiti.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/mandi.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/shimla.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/sirmour.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/solan.dart';
import 'package:himachal_gk/OneLinerQuestion/Distt._Wise/unna.dart';
import 'Distt._Wise/bilaspur.dart';
import '../style.dart';

class DisttWiseScreen extends StatelessWidget {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => BilaspurGK())),
                      );
                    }
                    if (index == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => KulluGK())),
                      );
                    }
                    if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => ChambaGK())),
                      );
                    }
                    if (index == 3) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => MandiGK())),
                      );
                    }
                    if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => HamirpurGK())),
                      );
                    }
                    if (index == 5) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => KangraGK())),
                      );
                    }
                    if (index == 6) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => UnnaGK())),
                      );
                    }
                    if (index == 7) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => LaholSpitiGK())),
                      );
                    }
                    if (index == 8) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => ShimlaGK())),
                      );
                    }
                    if (index == 9) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => SolanGK())),
                      );
                    }
                    if (index == 10) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => KinaurGK())),
                      );
                    }
                    if (index == 11) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => SirmourGK())),
                      );
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

  final VoidCallback onTapHandler;

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
      onTap: onTapHandler,
    );
  }
}
