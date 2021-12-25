import 'package:flutter/material.dart';

import 'calendar_data.dart';
import 'list_calendar_data.dart';
import 'wrapper.dart';

class CalendartList extends StatelessWidget {
  final List<CalendarData> datas;

  const CalendartList({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: datas.isEmpty ? _Empty() : _List(list: datas),
    );
  }
}

class _Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'There are no interviews.',
        style: TextStyle(fontSize: 14),
      ),
    );
  }
}

class _List extends StatelessWidget {
  
  final List<CalendarData> list;

  const _List({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    
    return SizedBox(
      height: size.height *0.403,
      child: ListView(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Transaction List", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Wrapper(
              child: ListCalendarData(calendarData: list),
            ),
          ],
        ),
      ]),
    );
  }
}
