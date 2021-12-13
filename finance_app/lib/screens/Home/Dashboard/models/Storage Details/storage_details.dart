// ignore_for_file: prefer_const_constructors

import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

import 'storage_chart.dart';
import 'storage_info_card.dart';


class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: FinanceAppTheme.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Tinkoff Black",
            amountOfFiles: "10000₽",
            numOfFiles: 10000,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Sber Gold",
            amountOfFiles: "5000₽",
            numOfFiles: 5000,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Zenit ",
            amountOfFiles: "1328₽",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Cash",
            amountOfFiles: "140₽",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
