import 'package:flutter/material.dart';
import 'package:tugasmpro/screens/profile_screen.dart';
import 'package:tugasmpro/screens/splash_screen.dart';
import 'package:tugasmpro/screens/welcome_screen.dart';
import 'package:tugasmpro/screens/login_screen.dart';
import 'package:tugasmpro/screens/register_screen.dart';
import 'package:tugasmpro/widgets/logo_vokasi.dart';
// import 'package:vokasi_app/screens/splash_screen.dart';
// import 'package:vokasi_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
    );
  }
}