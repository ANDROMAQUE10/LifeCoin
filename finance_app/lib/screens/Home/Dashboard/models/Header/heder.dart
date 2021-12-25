import 'package:finance_app/finance_app_theme.dart';
import 'package:finance_app/screens/Home/Dashboard/models/Header/models/my_account_button.dart';
import 'package:finance_app/screens/Home/Dashboard/models/Header/models/my_card_files.dart';
import 'package:finance_app/screens/Home/Dashboard/models/Header/models/profile_button.dart';

import 'package:flutter/material.dart';

import 'models/file_info_card.dart';


class Heder extends StatelessWidget {
  const Heder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            MyAccountButton(),
            ProfileButton(),
          ],
        ),
        const SizedBox(height: defaultPadding),
        FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
        )
      ]
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyCard.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyCard[index]),
    );
  }
}
