import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Color(0xFFE3ACF9),
        appBar: AppBar(
          backgroundColor: const Color(0xFF030308),
          title: Text(
            "OpenSource",
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://blog.tooljet.com/content/images/2022/09/Screenshot-2022-09-27-at-08.03.21.png"),
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
                              image: NetworkImage("https://developers.google.com/open-source/gsoc/resources/downloads/GSoC-Vertical.png"),
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
                              image: NetworkImage("https://pbs.twimg.com/profile_images/561419803202568194/Pjk5iqNn_400x400.png"),
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
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ13AWJs7n3Jg5dHRjReLcGl9PfuL0AigEa8c_Uo1hSOdZ0KELLwL2ZTa7ZDpfhL2WScis&usqp=CAU"),
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
                              image: NetworkImage("https://media.geeksforgeeks.org/wp-content/cdn-uploads/20201201203505/MLH-Fellowship-%E2%80%93-Programs-Offered-Application-Process-Benefits.png"),
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
                              image: NetworkImage("https://media.licdn.com/dms/image/C510BAQGSObrO0QPlMQ/company-logo_200_200/0/1555704980721?e=2147483647&v=beta&t=JjmObXiOOQwgANdMb1DX6LQtRg_qkE3Uo-MEakBT9uU"),
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