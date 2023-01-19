import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:info_guild/screens/SIH.dart';

class HACKATHONS extends StatefulWidget {
  static const id = 'HACKATHONS';

  @override
  State<HACKATHONS> createState() => _HACKATHONSState();
}

class _HACKATHONSState extends State<HACKATHONS> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
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
        body: Container(child: Padding(
          padding: const EdgeInsets.all(10.0),
            child: GridView(children: [
              InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SIH()));
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF90E0E5),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [ Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThQ2wsHjP4cD-CALDgfwDZ_2EDW_IYrjUotg&usqp=CAU')),
                      ],),),),
              InkWell(
                onTap:(){
                },
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: NetworkImage('https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F401489889%2F1248429749423%2F1%2Foriginal.20221129-094625?w=940&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C0%2C1280%2C640&s=570e62e74a389eb2d9e5cd0a5a2caaf6'))],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF00B4D8),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hackathon-3',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hackathon-4',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hackathon-5',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF023E8A),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hackathon-6',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),)),
        ),
      ),
    );
  }
}