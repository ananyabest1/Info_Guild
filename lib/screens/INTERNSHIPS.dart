import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Color(0xFFE3ACF9),
        appBar: AppBar(
          backgroundColor: const Color(0xFF030308),
          title: Text(
            "Internships",
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
                                image: NetworkImage("https://s3.amazonaws.com/s3.clients.splashthat.com/img/events/splash/cards/458120819.x3.01075e26.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://techcrunch.com/wp-content/uploads/2012/04/microsoft-logo.jpg"),
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
                              image: NetworkImage("https://media.geeksforgeeks.org/wp-content/cdn-uploads/20220720121505/google2.jpg"),
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
                              image: NetworkImage("https://pbs.twimg.com/profile_images/1600249531555274753/LYQe6yBZ_400x400.png"),
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://mms.businesswire.com/media/20220915005546/en/786044/23/AdobeLogo.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://www.womenmeanbusiness.com/wordpress/wp-content/uploads/2016/04/codess-logo-featured.jpg"),
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