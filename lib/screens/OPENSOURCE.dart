import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_guild/screens/Hacktober.dart';
import 'package:info_guild/screens/GSOC.dart';
import 'package:info_guild/screens/Outreachy.dart';
import 'package:info_guild/screens/codejam.dart';
import 'package:info_guild/screens/mLH.dart';
import 'package:info_guild/screens/GirlsSOC.dart';

class OPENSOURCE extends StatefulWidget {
  static const id = 'OPENSOURCE';

  @override
  State<OPENSOURCE> createState() => _OPENSOURCEState();
}

class _OPENSOURCEState extends State<OPENSOURCE> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFefa00b),
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
                        Text("Opensource",style: GoogleFonts.pacifico(textStyle:TextStyle(color: Colors.black,fontSize: 40,)))
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Hacktober()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://blog.tooljet.com/content/images/2022/09/Screenshot-2022-09-27-at-08.03.21.png"),
                          fit: BoxFit.cover,

                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF90E0E5),),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GSOC()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://developers.google.com/open-source/gsoc/resources/downloads/GSoC-Vertical.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Outreachy()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://pbs.twimg.com/profile_images/561419803202568194/Pjk5iqNn_400x400.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF00B4D8),),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => codejam()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ13AWJs7n3Jg5dHRjReLcGl9PfuL0AigEa8c_Uo1hSOdZ0KELLwL2ZTa7ZDpfhL2WScis&usqp=CAU"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => mLH()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://media.geeksforgeeks.org/wp-content/cdn-uploads/20201201203505/MLH-Fellowship-%E2%80%93-Programs-Offered-Application-Process-Benefits.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GirlsSOC()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://media.licdn.com/dms/image/C510BAQGSObrO0QPlMQ/company-logo_200_200/0/1555704980721?e=2147483647&v=beta&t=JjmObXiOOQwgANdMb1DX6LQtRg_qkE3Uo-MEakBT9uU"),
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