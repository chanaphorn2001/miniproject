import 'package:firebase_core/firebase_core.dart';
import 'package:lab12/pages1/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab12/pages1/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: GoogleFonts.baiJamjureeTextTheme(),
          appBarTheme:
              AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
          primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}
