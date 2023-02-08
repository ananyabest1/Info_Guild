import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<LoginScreen> {
  static const String _title = 'Login';
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://w0.peakpx.com/wallpaper/442/111/HD-wallpaper-purple-wavy-metal.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome\nBack',
                style: GoogleFonts.pacifico(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              email = value;
                            },
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              password = value;
                            },
                            style: TextStyle(),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () async{
                                  try{
                                    final newUser = await _auth.createUserWithEmailAndPassword(
                                        email: email, password: password);
                                    if(newUser != null){
                                      Navigator.pushNamed(context, HomeScreen.id);
                                    }
                                  }
                                  catch(e){
                                    print(e);
                                  }


                                },
                                 child: Text(
                                        'Sign Up',
                                        textAlign: TextAlign.left,
                                          style: TextStyle(
                                          decoration: TextDecoration.underline,
                                           color: Colors.white,
                                              fontSize: 18),
                                  ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}