import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/initial_page.dart';

class EcoRideApp extends StatelessWidget {
  const EcoRideApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),

        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromRGBO(241, 59, 100, 1),
        ),
      ),
      home: InitialPage(),
    );
  }
}
