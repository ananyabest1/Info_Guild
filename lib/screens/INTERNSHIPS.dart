import 'dart:ui';
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
      home: Scaffold(
        backgroundColor: const Color(0xFF814B6B),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E202E),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.location_on_sharp),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}