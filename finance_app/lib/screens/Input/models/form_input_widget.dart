import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class FormInpitWidget extends StatelessWidget {
  const FormInpitWidget({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar( 
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Costs'),
                Tab(text: 'Income'),
                Tab(text: 'Translation'),
              ],
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.normal, fontSize: 18),
            ),
          title: const Center(child: Text('Form Input')),
          backgroundColor: FinanceAppTheme.secondaryColor,
          ),
          body: const TabBarView(
            children: [
              TabInput(),
              TabInput(),
              TabInput(),
            ]
          ),
        ),
      ),
    );
}
}

class TabInput extends StatelessWidget {
  const TabInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: FinanceAppTheme.background,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Container(                  
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: FinanceAppTheme.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Account DT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(),
                SizedBox(height: defaultPadding),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Account CT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: defaultPadding),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
