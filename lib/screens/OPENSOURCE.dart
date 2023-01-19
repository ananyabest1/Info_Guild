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
      home: Scaffold(
        backgroundColor: Colors.white,
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
        body: Container(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView(children: [
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF90E0E5),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Opensource-1',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF48CAE4),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Opensource-2',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF00B4D8),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Opensource-3',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF0096C7),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Opensource-4',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF006AA3),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Opensource-5',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),
              InkWell(
                onTap:(){},
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xFF023E8A),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Opensource-6',style: TextStyle(color:Colors.white,fontSize: 25),),],),),),],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),)),
        ),
      ),
    );
  }
}