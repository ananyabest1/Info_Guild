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
import 'package:info_guild/screens/SIH.dart';
import 'package:info_guild/screens/Flipkart.dart';
import 'package:info_guild/screens/Uber.dart';
import 'package:info_guild/screens/Servicenow.dart';
import 'package:info_guild/screens/optum.dart';
import 'package:info_guild/screens/CodeHers.dart';
import 'package:info_guild/screens/YSSP.dart';
import 'package:info_guild/screens/AIEESE.dart';
import 'package:info_guild/screens/FAER.dart';
import 'package:info_guild/screens/Colgate.dart';
import 'package:info_guild/screens/HDFC.dart';
import 'package:info_guild/screens/GF.dart';
import 'package:info_guild/screens/MS.dart';
import 'package:info_guild/screens/SI.dart';
import 'package:info_guild/screens/MoSt.dart';
import 'package:info_guild/screens/Adobe.dart';
import 'package:info_guild/screens/Codess.dart';
import 'package:info_guild/screens/GSOC.dart';
import 'package:info_guild/screens/Outreachy.dart';
import 'package:info_guild/screens/codejam.dart';
import 'package:info_guild/screens/mLH.dart';
import 'package:info_guild/screens/GirlsSOC.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:info_guild/link.dart';

final _auth = FirebaseAuth.instance;
String loggedUser = "";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( InfoGuild());
}

class InfoGuild extends StatelessWidget {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
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
        SIH.id : (context) => SIH(),
        Flipkart.id : (context) => Flipkart(),
        Uber.id : (context) => Uber(),
        Servicenow.id : (context) => Servicenow(),
        optum.id : (context) => optum(),
        CodeHers.id : (context) => CodeHers(),
        YSSP.id : (context) => YSSP(),
        AIEESE.id : (context) => AIEESE(),
        FAER.id: (context) => FAER(),
        Colgate.id : (context) => Colgate(),
        HDFC.id : (context) => HDFC(),
        GF.id : (context) => GF(),
        MS.id : (context) => MS(),
        SI.id : (context) => SI(),
        MoSt.id : (context) => MoSt(),
        Adobe.id : (context) => Adobe(),
        Codess.id: (context) => Codess(),
        GSOC.id : (context) => GSOC(),
        Outreachy.id : (context) => Outreachy(),
        codejam.id : (context) => codejam(),
        GirlsSOC.id : (context) => GirlsSOC(),
        mLH.id : (context) => mLH(),
        Link.id : (context)=> Link(),


      },
    );
  }
}