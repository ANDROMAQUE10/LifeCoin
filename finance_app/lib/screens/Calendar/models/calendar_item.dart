import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

import 'calendar_data.dart';
import 'color_tegs.dart';
import 'text_avatar.dart';

class CalendarItem extends StatelessWidget {
  final CalendarData calendarItemData;

  const CalendarItem({
    Key? key, 
    required this.calendarItemData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextAvatar(
              text: calendarItemData.name,
              size: 50,
              backgroundColor: Colors.white,
              textColor: Colors.white,
              fontSize: 14,
              upperCase: true,
              numberLetters: 10,
              shape: Shape.Rectangle,
            ),
            const SizedBox(width: defaultPadding / 2),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  calendarItemData.name,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: getRoleColor(calendarItemData.position)
                        .withOpacity(.2),
                    border: Border.all(
                      color: getRoleColor(calendarItemData.position),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                  child: Text(
                    calendarItemData.position,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontSize: 12),
                  ),
                )
              ],
            )
          ],
        ),
        _DateCard(date: calendarItemData.getDate())
      ],
    );
  }
}

class _DateCard extends StatelessWidget {
  final String date;

  const _DateCard({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      decoration: BoxDecoration(
        color: FinanceAppTheme.secondaryColor,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: FinanceAppTheme.emailPasswordButton.withOpacity(0.5),
        ),
      ),
      child: Text(
        date,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
