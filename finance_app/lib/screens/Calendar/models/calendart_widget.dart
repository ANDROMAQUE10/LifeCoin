// ignore_for_file: avoid_print

import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'calendar_data.dart';
import 'calendar_list_widget.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  List<CalendarData> _selectedDate = [];

  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  List<CalendarData> _eventLoader(DateTime date) {
    return calendarData
        .where((element) => isSameDay(date, element.date))
        .toList();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _selectedDate = calendarData
            .where((element) => isSameDay(selectedDay, element.date))
            .toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FinanceAppTheme.secondaryColor, 
        borderRadius: BorderRadius.circular(10)
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DateFormat("MMM, yyyy").format(_focusedDay),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _focusedDay =
                            DateTime(_focusedDay.year, _focusedDay.month - 1);
                      });
                    },
                    child: const Icon(
                      Icons.chevron_left,
                      color: FinanceAppTheme.greenColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        print(_focusedDay);
                        _focusedDay =
                            DateTime(_focusedDay.year, _focusedDay.month + 1);
                      });
                    },
                    child: const Icon(
                      Icons.chevron_right,
                      color: FinanceAppTheme.greenColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TableCalendar<CalendarData>(
              selectedDayPredicate: (day) => isSameDay(_focusedDay, day),
              focusedDay: _focusedDay,
              firstDay: DateTime.utc(2018),
              lastDay: DateTime.utc(2025),
              headerVisible: false,
              onDaySelected: _onDaySelected,
              onFormatChanged: (result) {},
              daysOfWeekStyle: DaysOfWeekStyle(
                dowTextFormatter: (date, locale) {
                  return DateFormat("EEE").format(date);
                },
                weekendStyle: const TextStyle(
                  fontWeight: FontWeight.w600, 
                  color: FinanceAppTheme.redColor400 
                ),
                weekdayStyle: const TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              weekendDays: const [DateTime.sunday, 6],
              startingDayOfWeek: StartingDayOfWeek.monday,
              daysOfWeekHeight: defaultPadding * 3.5,
              calendarFormat: CalendarFormat.month,
              onPageChanged: (day) {
                _focusedDay = day;
                setState(() {});
              },
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: FinanceAppTheme.emailPasswordButton,
                  shape: BoxShape.circle,
                ),
                markerDecoration: BoxDecoration(
                  color: FinanceAppTheme.nearlyBlue,
                  shape: BoxShape.circle,
                ),
                weekendTextStyle: TextStyle(color: FinanceAppTheme.redColor400),
                
              ),
              eventLoader: _eventLoader),
          const SizedBox(height: defaultPadding / 2),
          CalendartList(datas: _selectedDate),
        ],
      ),
    );
  }
}
