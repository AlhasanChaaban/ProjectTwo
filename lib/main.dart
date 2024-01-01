import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project Two',
      theme: ThemeData(
        primarySwatch: Colors.grey ,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.rubikTextTheme(
        Theme.of(context).textTheme,
        ),
      ),
      home: MyHomePage(),
    );
  }
}
