import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_guild/screens/SIH.dart';
import 'package:info_guild/screens/Flipkart.dart';
import 'package:info_guild/screens/Uber.dart';
import 'package:info_guild/screens/Servicenow.dart';
import 'package:info_guild/screens/optum.dart';
import 'package:info_guild/screens/CodeHers.dart';

class HACKATHONS extends StatefulWidget {
  static const id = 'HACKATHONS';

  @override
  State<HACKATHONS> createState() => _HACKATHONSState();
}

class _HACKATHONSState extends State<HACKATHONS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF48CAE4),
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
                        Text("Hackathon",style: GoogleFonts.pacifico(textStyle:TextStyle(color: Colors.black,fontSize: 40,)))
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
        body:
        Container(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
              children: [
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SIH()));}
                  ,child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://i0.wp.com/opportunitycell.com/wp-content/uploads/2022/03/SIH2.png?fit=327%2C345&ssl=1"),
                      ),
                      borderRadius: BorderRadius.circular(20),color: Colors.white),
                ),
                ),

                InkWell(
                  onTap:(){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Flipkart()));

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://d8it4huxumps7.cloudfront.net/uploads/images/150x150/60ccb1c32901f_D2C__150-150.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                  ),
                ),
                InkWell(
                  onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Uber()));},
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://i0.wp.com/www.scholarshipsinindia.com/wp-content/uploads/uber-hacktag-2021.jpg?fit=200%2C200&ssl=1"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),color: const Color(0xFF00B4D8),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Servicenow()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://i0.wp.com/www.scholarshipsinindia.com/wp-content/uploads/servicenow-women-code-to-win-2023-india.jpg?fit=200%2C200&ssl=1"),
                      ),
                      borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                  ),
                ),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => optum()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://media.licdn.com/dms/image/C4E22AQHrEyzviViB5w/feedshare-shrink_800/0/1666970776940?e=2147483647&v=beta&t=eYT1WGcCv_M0G6YeaZMIbHIrWGt_usmOgtmxW4b_TBc"),
                      ),
                      borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                  ),
                ),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CodeHers()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://d8it4huxumps7.cloudfront.net/uploads/images/150x150/60ad0f7d5e8a5_unnamed.jpg"),
                      ),
                      borderRadius: BorderRadius.circular(20),color: const Color(0xFF023E8A),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}