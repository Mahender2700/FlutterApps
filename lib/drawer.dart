import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:launch_review/launch_review.dart';

final Uri _url = Uri.parse(
    'https://play.google.com/store/apps/developer?id=GK+In+Hindi+Offline');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

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
            onTap: () async {
              await Share.share(
                  "check out this Awesome App https://play.google.com/store/apps/developer?id=GK+In+Hindi+Offline",
                  subject: 'Sharing on WhatsApp');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.star_border,
              color: Colors.deepOrange,
            ),
            title: const Text(
              'Rate This App',
              // style: categoryTextStyle,
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              LaunchReview.launch(
                //import 'package:launch_review/launch_review.dart';
                //Add dependencies launch_review: ^2.0.0
                //Paste your AndroidAppId below
                androidAppId: "com.iyaffle.kural",
                //Paste your iOSAppId below
                // iOSAppId: "585027354",
              );
            },
          ),
          const ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.deepOrange,
            ),
            title: Text(
              'Our Apps List',
              // style: categoryTextStyle,
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: _launchUrl,
          ),
        ],
      ),
    );
  }
}
