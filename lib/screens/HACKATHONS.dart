import 'package:emoji_feedback/emoji_feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Color(0xFFE3ACF9),
        appBar: AppBar(
          backgroundColor: const Color(0xFF030308),
          title: Text(
            "Hackathons",
            style: GoogleFonts.pacifico(
              fontSize: 30,
              color: Colors.white,
            ),),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),),
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
                        image: NetworkImage("https://i0.wp.com/opportunitycell.com/wp-content/uploads/2022/03/SIH2.png?fit=327%2C345&ssl=1"),
                        ),
                        borderRadius: BorderRadius.circular(20),color: Colors.white),
                   ),
                  ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://d8it4huxumps7.cloudfront.net/uploads/images/150x150/60ad0f7d5e8a5_unnamed.jpg"),
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
                            image: NetworkImage("https://i0.wp.com/www.scholarshipsinindia.com/wp-content/uploads/uber-hacktag-2021.jpg?fit=200%2C200&ssl=1"),
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
                              image: NetworkImage("https://i0.wp.com/www.scholarshipsinindia.com/wp-content/uploads/servicenow-women-code-to-win-2023-india.jpg?fit=200%2C200&ssl=1"),
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://media.licdn.com/dms/image/C4E22AQHrEyzviViB5w/feedshare-shrink_800/0/1666970776940?e=2147483647&v=beta&t=eYT1WGcCv_M0G6YeaZMIbHIrWGt_usmOgtmxW4b_TBc"),
                            ),
                            borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://d8it4huxumps7.cloudfront.net/uploads/images/150x150/60ccb1c32901f_D2C__150-150.png"),
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