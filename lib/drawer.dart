import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:launch_review/launch_review.dart';
// import './style.dart';
// import 'package:share/share.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'dart:ui';
// import 'dart:ui' show lerpDouble;

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150.0,
            width: double.infinity,
            color: Colors.deepOrangeAccent,
            child: Center(
              child: Text(
                'हिमाचल सामान्य ज्ञान',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.deepOrange,
            ),
            title: Text(
              'Share with Friends',
              // style: categoryTextStyle,
            ),
            trailing: Icon(
              Icons.arrow_right,
            ),
            onTap: () {
              // Share.share(
              //   'check out this Awesome App https://play.google.com/store/apps/details?id=educationalapps.sscpreviousyearsgk',
              //   // subject: 'Sharing on Email'
              // );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.star_border,
              color: Colors.deepOrange,
            ),
            title: Text(
              'Rate This App',
              // style: categoryTextStyle,
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              // LaunchReview.launch(
              //   //import 'package:launch_review/launch_review.dart';
              //   //Add dependencies launch_review: ^2.0.0
              //   //Paste your AndroidAppId below
              //   androidAppId: "com.iyaffle.kural",
              //   //Paste your iOSAppId below
              //   // iOSAppId: "585027354",
              // );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.deepOrange,
            ),
            title: Text(
              'Our Apps List',
              // style: categoryTextStyle,
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () async {
              // const url =
              //     'https://play.google.com/store/apps/developer?id=Educational+Apps+In+Hindi';

              // if (await canLaunch(url)) {
              //   await launch(url, forceSafariVC: false);
              // } else {
              //   throw 'Could not launch $url';
              // }
            },
          ),
        ],
      ),
    );
  }
}
