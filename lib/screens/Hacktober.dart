import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Hacktober extends StatefulWidget {
  static const String id = 'Hacktober';
  @override
  _HacktoberState createState() => _HacktoberState();
}

class _HacktoberState extends State<Hacktober> {

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
                backgroundImage: NetworkImage('https://blog.tooljet.com/content/images/2022/09/Screenshot-2022-09-27-at-08.03.21.png')),),
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
                                " HACKTOBERFEST is DIGITALOCEAN'S annual event that encourages people to open source throughout October.""   "
                                "HACKTOBERFEST perfectly encapsulates the Open Source culture and the skills that it contributes to. "
                                ,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20,),
                            ],
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(30.0),
                          child: MaterialButton(
                            onPressed: () {
                              _launchURL('https://www.sih.gov.in/');
                            },
                            child: Icon(Icons.arrow_forward_rounded),
                            color: Color(0xfffcff4b),
                          ),
                        ),
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
