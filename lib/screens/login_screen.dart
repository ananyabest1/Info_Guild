import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';


import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<LoginScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool _isLoggedIn = false;
  late GoogleSignInAccount _userObj;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/93/79/3b/93793b2991eb5c19b6122b3eb8d38620.jpg'),fit: BoxFit.cover ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: _isLoggedIn
              ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(_userObj.photoUrl!),
                const SizedBox(height: 20,),
                Text(_userObj.displayName!),
                const SizedBox(height: 20,),
                Text(_userObj.email),
                const SizedBox(height: 20,),
                MaterialButton(
                  onPressed: () {
                    _googleSignIn.signOut().then((value) {
                      setState(() {
                        _isLoggedIn = false;
                      });
                    }).catchError((e) {});
                  },
                  height: 50,
                  minWidth: 100,
                  color: Color(0xFF13005A),
                  child: const Text('Logout',style: TextStyle(color: Colors.white,fontSize: 20,),),
                ),
                SizedBox(height: 40,),
                MaterialButton(onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                  height: 60,
                  minWidth: 120,
                  color: Color(0xFF13005A),
                  child: const Text('Welcome to Info Guild',style:
                  TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    letterSpacing: 1,),),
                ),
              ],
            ),
          ) :
          Center(
            child: MaterialButton(
             child: Text('Sign Up With Google',style:
            TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: 1,),),
              height: 60,
              minWidth: 150,
              color: Color(0xFF13005A),
            onPressed: () {
              _googleSignIn.signIn().then((userData) {
                setState(() {
                  _isLoggedIn = true;
                  _userObj = userData!;
                });
              }).catchError((e) {
                print(e);
              });
            },
          ),),
          ),
        ),
      );
  }
}