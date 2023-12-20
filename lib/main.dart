import 'package:flutter/material.dart';
import 'package:flutter_learning/screens/home_page.dart';
import 'package:flutter_learning/screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bringVegetable(bag: true);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/Home": (context) => HomePage(),
        "/login": (context) => const LoginPage(),
      },
    );
  }

//required = the value cant be null
  bringVegetable({required bool bag, int rupees = 100}) {}
}
