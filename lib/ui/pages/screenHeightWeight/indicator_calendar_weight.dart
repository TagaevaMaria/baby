import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../library/scaffold_manager/scaffold_manager.dart';
import '../screen_allergy/calendar_allergy.dart';

class IndicatorCalendarWeight extends StatefulWidget {
  const IndicatorCalendarWeight({Key? key}) : super(key: key);

  @override
  IndicatorCalendarState createState() => IndicatorCalendarState();
}

class IndicatorCalendarState extends State<IndicatorCalendarWeight> {
  /// счетчик показетелей веса

  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  final TextEditingController _eventcontroller = TextEditingController();

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldManager(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
          title: const Text('Показатели Веса'),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const CalendarAllergy(),

            ///мой календарь
            ..._getEventsfromDay(selectedDay).map(
              (Event event) => ListTile(
                title: Text(event.title),
              ),
            ),
            const SizedBox(height: 150),
            FloatingActionButton.extended(
              onPressed: () => _WeightIndicators,

              ///тут делаю открытие прокрутки выбора данных
              label: const Text('Добавить событие'),
              icon: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}

class Event {
  final String title;
  Event({required this.title});
  @override
  String toString() => title;
}

class _WeightIndicators extends StatefulWidget {
  const _WeightIndicators({Key? key}) : super(key: key);

  @override
  _WeightIndicatorsState createState() => _WeightIndicatorsState();
}

class _WeightIndicatorsState extends State<_WeightIndicators> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: CupertinoPicker(
        itemExtent: 20,
        onSelectedItemChanged: (int selectedItem) {
          setState(() {
          });
        },
        children: const [
          Text('0'),
          Text('1'),
          Text('2'),
        ],
      ),
    );
  }
}
