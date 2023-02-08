import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Adobe extends StatefulWidget {
  static const String id = 'Adobe';
  @override
  _AdobeState createState() => _AdobeState();
}

class _AdobeState extends State<Adobe> {

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
                backgroundImage: NetworkImage('https://www.adobe.com/content/dam/offers-homepage/us/en/homepage/twitter_adobe.png')),),
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
                                "Each year, the Adobe Research team brings talented computer science and electrical engineering PhD students to our labs to ideate and innovate on tomorrow’s technologies. Join Adobe Research to get real-world experience and make your mark on the future of Adobe’s products."
                                ,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20,),
                            ],
                          )
                      ),
              ]
                      ),
                  ),

                ),
          ],
        ),
      ),
    );
  }
}
