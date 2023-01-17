import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String _title = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Home Page", style: TextStyle(color: Colors.white,),),
          centerTitle: true ,
          actions :  <Widget> [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            ),

          ],
          backgroundColor: Color(0xFF13005A),
          leading: IconButton(
            onPressed: () {},
            icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu)
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 250,
                aspectRatio: 10/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNKQPBPpsTsF_sbqsrdY-xdTR5tFvMBAq7hHaNG1r5QNhz99r_qxFfJWgAHmf-xJrob0w&usqp=CAU"),
                Image.network("https://highereducationplus.com/wp-content/uploads/2021/05/Scholarships.jpg"),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0N2QfQGqGnIxtWLwvx4HBeYE2DVJb0Oykzw&usqp=CAU"),
              ],
              // autoPlay: true,
              // viewportFraction: 1.0,
              // aspectRatio: 2.0,
            ),

            Container(
              child:Text('Find your Opportunity',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),),
            ),
            SizedBox(height: 20,),
            Container(
              child: Expanded(
                // padding: const EdgeInsets.all(13.0),
                child: GridView(
                  children:[
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://t3.ftcdn.net/jpg/04/99/58/30/360_F_499583007_CSSaW4P8kkTjrEBJR5YDzq5KRttxRz3a.jpg')
                          ),
                          borderRadius: BorderRadius.circular(20),color: Colors.white,),
                        child: Column(
                          children: [
                            Text("Hackathons" , style: GoogleFonts.pacifico(
                              fontSize: 25,
                              color: Colors.black,
                            ),),
                          ],),
                      ),
                    ),

                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://img.freepik.com/premium-vector/graduate-cap-with-scholarship-icon-illustration_138676-177.jpg?w=2000')
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Text("Scholorships" , style: GoogleFonts.pacifico(
                              fontSize: 25,
                              color: Colors.black,
                            ),),
                          ],),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/000/191/833/small/191833.jpg')
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text("Internships" , style: GoogleFonts.pacifico(
                              fontSize: 25,
                              color: Colors.black,
                            ),),
                          ],),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        decoration:
                        BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('https://goncalotomas.com/content/images/2019/11/gsoc.png')
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Text("Open Source" , style: GoogleFonts.pacifico(
                              fontSize: 25,
                              color: Colors.black,
                            ),),
                          ],),
                      ),

                    ),
                  ],
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,),

                ),
              ),
            ),
          ],
        )
    );
  }
}

