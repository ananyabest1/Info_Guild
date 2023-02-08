import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_guild/screens/YSSP.dart';
import 'package:info_guild/screens/AIEESE.dart';
import 'package:info_guild/screens/FAER.dart';
import 'package:info_guild/screens/Colgate.dart';
import 'package:info_guild/screens/HDFC.dart';
import 'package:info_guild/screens/GF.dart';

class SCHOLARSHIPS extends StatefulWidget {
  static const id = 'SCHOLARSHIPS';

  @override
  State<SCHOLARSHIPS> createState() => _SCHOLARSHIPSState();
}

class _SCHOLARSHIPSState extends State<SCHOLARSHIPS> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE3ACF9),
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
                        Text("Scholarships",style: GoogleFonts.pacifico(textStyle:TextStyle(color: Colors.black,fontSize: 40,)))
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => YSSP()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://www.scholarshipsinindia.com/wp-content/uploads/yashad-sumedha-scholarship-programme-1.jpg"),
                          ),
                          borderRadius: BorderRadius.circular(20),color: const Color(0xFF90E0E5),),
                      ),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AIEESE()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZGTy-N9MywVpDFrWlAjnPjTCm0ebp1hmEDCreDxT4zcplsPbdAUQfe9ugsgbzSBC4Ak8&usqp=CAU"),
                          ),
                          borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                      ),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FAER()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://s3-ap-southeast-1.amazonaws.com/cdn.buddy4study.com/static/scholarship_logo/logo_17100_1571034200.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: Colors.white54),
                      ),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Colgate()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://i0.wp.com/www.scholarshipsinindia.com/wp-content/uploads/keep-india-smiling-foundational-scholarship-program.jpg?fit=239%2C238&ssl=1"),
                          ),
                          borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                      ),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HDFC()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://d2w7l1p59qkl0r.cloudfront.net/static/scholarship_logo/document_1657875837.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                      ),
                    ),),
                  InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GF()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://getmyuni.azureedge.net/assets/images/scholarship/e069158f41ee5e6b96c03355d55f6585.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),color: const Color(0xFF023E8A),),
                      ),
                    ),),],
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),)),
        ),
      ),
    );
  }
}