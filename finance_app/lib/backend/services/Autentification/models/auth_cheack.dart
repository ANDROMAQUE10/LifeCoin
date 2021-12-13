import 'package:finance_app/backend/services/Autentification/auth_service.dart';
import 'package:finance_app/backend/services/Autentification/models/user_model.dart';
import 'package:finance_app/screens/Home/models/side_menu_drawer.dart';
import 'package:finance_app/screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthCheack extends StatelessWidget {
  const AuthCheack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? const LoginScreen() : const SideMenuDrawer();
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
