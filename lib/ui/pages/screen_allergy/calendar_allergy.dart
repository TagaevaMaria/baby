import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


import 'event.dart';

class CalendarAllergy extends StatefulWidget {
  const CalendarAllergy({Key? key}) : super(key: key);

  @override
  _CalendarAllergyState createState() => _CalendarAllergyState();
}

class _CalendarAllergyState extends State<CalendarAllergy> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  final TextEditingController _eventController = TextEditingController();
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsFromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'ru_RU',
      focusedDay: selectedDay,
      firstDay: DateTime(2000),
      lastDay: DateTime(2050),
      calendarFormat: format,
      onFormatChanged: (CalendarFormat _format) {
        setState(() {
          format = _format;
        });
      },
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekVisible: true,
      onDaySelected: (DateTime selectedDay, DateTime focusDay) {
        setState(() {
          selectedDay = selectedDay;
          focusedDay = focusDay;
        });
        print(focusDay);
      },
      selectedDayPredicate: (DateTime date) {
        return isSameDay(selectedDay, date);
      },
      eventLoader: _getEventsFromDay,

      /// стиль календаря
      calendarStyle: const CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration:
            BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
        selectedTextStyle: TextStyle(color: Colors.white),
        todayDecoration:
            BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
      ),
      headerStyle:

          ///стиль заголовка
          const HeaderStyle(formatButtonVisible: false, titleCentered: true),
    );
  }
}
