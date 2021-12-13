import 'package:finance_app/screens/Home/main_app_home_screen.dart';
import 'package:finance_app/backend/services/responsive.dart';
import 'package:finance_app/screens/Home/models/side_menu.dart';
import 'package:flutter/material.dart';


class SideMenuDrawer extends StatelessWidget {
  const SideMenuDrawer({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: MainAppHomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
