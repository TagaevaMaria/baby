import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../library/scaffold_manager/scaffold_manager.dart';
import 'calendar_allergy.dart';
import 'event.dart';



class ScreenAllergy extends StatefulWidget {
  const ScreenAllergy({Key? key}) : super(key: key);

  @override
  _ScreenAllergyState createState() => _ScreenAllergyState();
}

class _ScreenAllergyState extends State<ScreenAllergy> {
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
    return ScaffoldManager(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Пищевой календарь '),
          backgroundColor: const Color.fromRGBO(165, 218, 249, 1),
        ),
        body: Column(
          children: [
            const CalendarAllergy(),

            ///мой календарь
            ..._getEventsFromDay(selectedDay).map(
              (Event event) => ListTile(
                title: Text(event.title),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Добавить событие'),
              content: TextFormField(
                controller: _eventController,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('закрыть')),
                TextButton(
                  child: const Text('ok'),
                  onPressed: () {
                    if (_eventController.text.isEmpty) {
                    } else {
                      if (selectedEvents[selectedDay] != null) {
                        selectedEvents[selectedDay]?.add(
                          Event(title: _eventController.text),
                        );
                      } else {
                        selectedEvents[selectedDay] = [
                          Event(title: _eventController.text)
                        ];
                      }
                    }
                    Navigator.pop(context);
                    _eventController.clear();
                    setState(() {});
                    return;
                  },
                ),
              ],
            ),
          ),
          label: const Text('добавить событие'),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
