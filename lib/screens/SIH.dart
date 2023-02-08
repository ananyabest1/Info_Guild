import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class SIH extends StatefulWidget {
  static const String id = 'SIH';
  @override
  _SIHState createState() => _SIHState();
}

class _SIHState extends State<SIH> {

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
      backgroundColor: Color(0xff00005C),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [ Positioned( top : 10,
            left: 50,
            child:
                 CircleAvatar(
              radius: 150,
             backgroundImage: NetworkImage('https://i0.wp.com/opportunitycell.com/wp-content/uploads/2022/03/SIH2.png?fit=327%2C345&ssl=1')),),
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
                                    color: Color(0xff00005C)
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
                                " Smart India Hackathon is a nationwide initiative to provide students a platform to solve some of the pressing problems we face in our daily lives, and thus inculcate a culture of product innovation and a mindset of problem solving."
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
