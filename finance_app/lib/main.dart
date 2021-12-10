// ignore_for_file: use_key_in_widget_constructors

import 'package:finance_app/constants.dart';
import 'package:finance_app/controllers/menu_controller.dart';
import 'package:finance_app/screens/Home/main_screen.dart';
import 'package:finance_app/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      routes: {
        '/login': (context) => LoginScreen(),
        '/main_screan': (context) => MainScreen(),
      },
      initialRoute: '/login',
      // home: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(
      //       create: (context) => MenuController(),
      //     ),
      //   ],
      // ),
    );
  }
}
