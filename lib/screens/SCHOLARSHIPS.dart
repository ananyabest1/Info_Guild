import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          backgroundColor: const Color(0xFF030308),
          title: Text(
            "Scholarships",
            style: GoogleFonts.pacifico(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.keyboard_return_sharp))
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Discover Your Opportunities",
                    style: GoogleFonts.pacifico(
                      fontSize: 30,
                      color: Colors.black,
                    ),),
                  Icon(
                    Icons.face,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(height: 30,),
              EmojiFeedback(
                onChange: (index){
                  print(index);
                },
              ),
              SizedBox(height: 40,),
              Container(
                child: Expanded(
                  // padding: const EdgeInsets.all(13.0),
                  child: GridView(
        body: Container(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(children: [
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFFFFCCD5),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scholarship-1',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFFFFB3C1),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scholarship-2',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFFFF8FA3),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scholarship-3',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFFFF7F8F),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scholarship-4',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFFC68093),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scholarship-5',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF814B6B),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://www.scholarshipsinindia.com/wp-content/uploads/yashad-sumedha-scholarship-programme-1.jpg"),
                                fit:BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZGTy-N9MywVpDFrWlAjnPjTCm0ebp1hmEDCreDxT4zcplsPbdAUQfe9ugsgbzSBC4Ak8&usqp=CAU"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://s3-ap-southeast-1.amazonaws.com/cdn.buddy4study.com/static/scholarship_logo/logo_17100_1571034200.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF00B4D8),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://i0.wp.com/www.scholarshipsinindia.com/wp-content/uploads/keep-india-smiling-foundational-scholarship-program.jpg?fit=239%2C238&ssl=1"),
                              fit:BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://d2w7l1p59qkl0r.cloudfront.net/static/scholarship_logo/document_1657875837.jpg"),
                              fit:BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://getmyuni.azureedge.net/assets/images/scholarship/e069158f41ee5e6b96c03355d55f6585.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF023E8A),),
                        ),
                      ),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 20,),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}