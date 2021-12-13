import 'package:finance_app/screens/Home/Dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'BottomBar/bottom_bar_view.dart';
import '../../finance_app_theme.dart';
import 'BottomBar/models/tab_Icon_models.dart';



class MainAppHomeScreen extends StatefulWidget {
  const MainAppHomeScreen({Key? key}) : super(key: key);

  @override
  _MainAppHomeScreenState createState() => _MainAppHomeScreenState();
}

class _MainAppHomeScreenState extends State<MainAppHomeScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  List<TabIconModels> tabIconsList = TabIconModels.tabIconsList;

  Widget tabBody = Container(
    color: FinanceAppTheme.background,
  );

  @override
  void initState() {
    for (var tab in tabIconsList) {
      tab.isSelected = false;
    }
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = DashboardScreen(
      // animationController: animationController
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FinanceAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0 || index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      DashboardScreen();
                });
              });
            }
          },
        ),
      ],
    );
  }
}