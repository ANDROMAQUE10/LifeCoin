// ignore_for_file: prefer_const_constructors

import 'package:finance_app/backend/backend.dart';
import 'package:finance_app/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'category_colum.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Chart();
}

class _Chart extends State {
  int touchedIndex = -1;

  int valueTotal = Total;
  int valueProduct = Product;
  int valueBokaleya = Bokaleya;
  int valueMedical = Medical;
  int valueTransport = Transport;
  int valueHomePay = HomePay;
  int valueMedia = Media;
  int valueRestoran = Restoran;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.0/3.0,
      child: Stack(
        children: [
          Card(
            color: secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 5),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1, 
                        child: PieChart(
                          PieChartData(
                            pieTouchData: PieTouchData(touchCallback:
                                (FlTouchEvent event, pieTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions ||
                                    pieTouchResponse == null ||
                                    pieTouchResponse.touchedSection == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = pieTouchResponse
                                    .touchedSection!.touchedSectionIndex;
                              });
                            }),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            sectionsSpace: 0,
                            centerSpaceRadius: 50,
                            startDegreeOffset: -90,
                            sections: showingSections()
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    CategoryColum(),
                    SizedBox(width: 5),
                  ],
                ),
              ]
            ),
          ),
          //* Тотал суммы всех транзакций 
          // Container(
          //   height: 200,
          //   child: Positioned.fill(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //          Column(
          //           mainAxisSize: MainAxisSize.min,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             SizedBox(height: defaultPadding),
          //             Text(
          //               "Total",
          //               style: Theme.of(context).textTheme.headline4!.copyWith(
          //                     color: Colors.white,
          //                     fontWeight: FontWeight.w300,
          //                     height: 0.5,
          //                   ),
          //             ),
          //             Text(Total.toString()),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      )
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(8, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 16.0 : 9.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: Product.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: Bokaleya.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: Medical.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: Transport.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: const Color(0xff9c27b0),
            value: HomePay.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 5:
          return PieChartSectionData(
            color: const Color(0xffc51162),
            value: Shoping.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 6:
          return PieChartSectionData(
            color: const Color(0xfffff3c0),
            value: Media.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 7:
          return PieChartSectionData(
            color: const Color(0xff00bcd4),
            value: Restoran.toDouble(),
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        default:
          throw Error();
      }
    });
  }
}



