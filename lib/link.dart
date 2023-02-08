import 'dart:io';

import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class Link extends StatefulWidget {
  static const String id = 'LINK';
  @override
  State<Link> createState() => _LinkState();
}

class _Link extends StatefulWidget {

  @override
  State<Link> createState() => _LinkState();
}

class _LinkState  extends State<Link>
{
  _launchurl() async{
    const url="https://www.kommunicate.io/livechat-demo?appId=3d834e9d158aacc2dd0a774ce0b0b4888&botIds=info-bot-tzazk&assignee=info-bot-tzazk";
    if(await canLaunch (url))
    {
      await launch(url);
    }
    else{
      throw "Could not launch the url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text ("Info Build BOT"),
    ),
      body:Center(
        child: IconButton (icon: Icon(Icons.link, size: 55, color: Colors.blue,),
          onPressed: _launchurl,),
      ),
    );
  }
}