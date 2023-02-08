import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class GF extends StatefulWidget {
  static const String id = 'GF';
  @override
  _GFState createState() => _GFState();
}

class _GFState extends State<GF> {

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
      backgroundColor: Color(0xffffb3c1),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [ Positioned( top : 10,
            left: 50,
            child:
            CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage('https://www.motachashma.com/images/gaurav-foundation-scholarship.png')),),
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
                                    color: Color(0xffffb3c1)
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
                                " Gaurav Foundation scholarship is awarded to highly meritorious Indian students who have completed their undergraduate study from India with good academic records to pursue their postgraduate studies in and out of India.It is a merit-based scholarship offered for studies at postgraduate level by the Gaurav Foundation, Chennai which is a public charitable organization started by Gaurav Singhal in 2007."
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
