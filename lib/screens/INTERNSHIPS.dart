import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_guild/screens/Amazon.dart';
import 'package:info_guild/screens/MS.dart';
import 'package:info_guild/screens/SI.dart';
import 'package:info_guild/screens/MoSt.dart';
import 'package:info_guild/screens/Adobe.dart';
import 'package:info_guild/screens/Codess.dart';


class INTERNSHIPS extends StatefulWidget {
  static const id = 'INTERNSHIPS';

  @override
  State<INTERNSHIPS> createState() => _INTERNSHIPSState();
}

class _INTERNSHIPSState extends State<INTERNSHIPS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFd9ed92),
        appBar: AppBar(
          elevation: 15,
          backgroundColor: const Color(0xFF083ef6),
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(""),),
                  gradient: SweepGradient(
                      endAngle: 1,
                      colors: [Color(0xFF083ef6),Color(0xFF008DFF),
                        Colors.deepPurpleAccent,Colors.lightBlueAccent,Colors.deepPurple,Colors.white]
                  )
              ),
            ),
          ),
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200))
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 4,bottom: 135),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment. spaceAround,
                      children: [
                        Text("Internship",style: GoogleFonts.pacifico(textStyle:TextStyle(color: Colors.black,fontSize: 40,)))
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: GridView(
                children: [
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Amazon()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://s3.amazonaws.com/s3.clients.splashthat.com/img/events/splash/cards/458120819.x3.01075e26.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF90E0E5),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MS()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://techcrunch.com/wp-content/uploads/2012/04/microsoft-logo.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SI()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://media.geeksforgeeks.org/wp-content/cdn-uploads/20220720121505/google2.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF00B4D8),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MoSt()));
                    },
                    child: Container(decoration:
                    BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://pbs.twimg.com/profile_images/1600249531555274753/LYQe6yBZ_400x400.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Adobe()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://mms.businesswire.com/media/20220915005546/en/786044/23/AdobeLogo.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                    ),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Codess()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://www.womenmeanbusiness.com/wordpress/wp-content/uploads/2016/04/codess-logo-featured.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF023E8A),),
                    ),),],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),)),
        ),
      ),
    );
  }
}