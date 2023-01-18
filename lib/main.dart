import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:info_guild/screens/home_screen.dart';
import 'package:info_guild/screens/login_screen.dart';
import 'package:info_guild/screens/splash_screen.dart';
import 'package:info_guild/screens/HACKATHONS.dart';
import 'package:info_guild/screens/SCHOLARSHIPS.dart';
import 'package:info_guild/screens/INTERNSHIPS.dart';
import 'package:info_guild/screens/OPENSOURCE.dart';



final _auth = FirebaseAuth.instance;
String loggedUser = "";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( InfoGuild());
}

class InfoGuild extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        HomeScreen.id : (context) => HomeScreen(),
        HACKATHONS.id : (context) => HACKATHONS(),
        SCHOLARSHIPS.id : (context) => SCHOLARSHIPS(),
        INTERNSHIPS.id : (context) => INTERNSHIPS(),
        OPENSOURCE.id : (context) => OPENSOURCE(),
      },
    );
  }
}