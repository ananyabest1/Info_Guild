import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Amazon extends StatefulWidget {
  static const String id = 'Amazon';
  @override
  _AmazonState createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99d98c),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [ Positioned( top : 10,
            left: 50,
            child:
            CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage('https://s3.amazonaws.com/s3.clients.splashthat.com/img/events/splash/cards/458120819.x3.01075e26.png')),),
            Positioned(
                top: 320,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      )
                  ),
                  child: ListView(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "INSIGHTS",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff99d98c)
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    " ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 25),
                              Text(
                                " Amazon WoW is a networking platform for all women engineering students in India that provides an opportunity to participate in skill building sessions, utilize available resources, converse with alumni on their career experiences, and be acquainted with the culture at Amazon."
                                ,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20,),
                            ],
                          )
                      ),
                    ],
                  ),

                ))
          ],
        ),
      ),
    );
  }
}
