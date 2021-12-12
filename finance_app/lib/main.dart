// ignore_for_file: use_key_in_widget_constructors

import 'package:finance_app/backend/services/auth_service.dart';
import 'package:finance_app/constants.dart';
import 'package:finance_app/screens/Home/main_screen.dart';
import 'package:finance_app/screens/Login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'backend/services/auth_cheack.dart';
import 'screens/Singup/singup_screen.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Finance App',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        routes: {
          '/': (context) => const AuthCheack(),
          '/login': (context) => LoginScreen(),
          '/main_screan': (context) => MainScreen(),
          '/singup_screen': (context) => SingUpScreen(),
        },
        initialRoute: '/',
        // home: MultiProvider(
        //   providers: [
        //     ChangeNotifierProvider(
        //       create: (context) => MenuController(),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
