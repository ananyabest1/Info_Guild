import 'dart:ui';
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
        backgroundColor: const Color(0xFF814B6B),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E202E),
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