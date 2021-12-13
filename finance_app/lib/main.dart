// ignore_for_file: use_key_in_widget_constructors

import 'package:finance_app/screens/Home/main_app_home_screen.dart';
import 'package:finance_app/screens/Login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'backend/services/Autentification/auth_service.dart';
import 'backend/services/Autentification/models/auth_cheack.dart';
import 'finance_app_theme.dart';
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
          scaffoldBackgroundColor: FinanceAppTheme.background,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: FinanceAppTheme.secondaryColor,
        ),
        routes: {
          '/': (context) => const AuthCheack(),
          '/login': (context) => const LoginScreen(),
          '/main_screan': (context) => const MainAppHomeScreen(),
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
