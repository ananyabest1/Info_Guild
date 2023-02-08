import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class mLH extends StatefulWidget {
  static const String id = 'mLH';
  @override
  _mLHState createState() => _mLHState();
}

class _mLHState extends State<mLH> {

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
      backgroundColor: Color(0xfffcff4b),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [ Positioned( top : 10,
            left: 50,
            child:
            CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage('https://media.geeksforgeeks.org/wp-content/cdn-uploads/20201201203505/MLH-Fellowship-%E2%80%93-Programs-Offered-Application-Process-Benefits.png')),),
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
                                    color: Color(0xfffcff4b)
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
                                "MLH is a 500k+ global community empowering the next generation of developers to learn through hackathons and the Open Source MLH Fellowship."
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
