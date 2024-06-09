import 'package:flutter/material.dart';
import 'package:olympix_2024/home.dart';
import 'package:calendar_day_view/calendar_day_view.dart';

void main() {
  runApp(const MaterialApp(home: Sandbox()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    List<DayEvent<String>> events = [
      DayEvent(
          value: "a",
          start: DateTime(2024, 6, 9, 12, 0, 0),
          end: DateTime(2024, 6, 9, 15, 0, 0),
          name: "Transport na imprezę"),
      DayEvent(
          value: "b",
          start: DateTime(2024, 6, 9, 16, 0, 0),
          end: DateTime(2024, 6, 9, 18, 0, 0),
          name: "Kolacja")
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body:
          CalendarDayView.overflow(
            startOfDay: const TimeOfDay(hour: 8, minute: 0),
            endOfDay: const TimeOfDay(hour: 24, minute: 0),
            showCurrentTimeLine: true,
            events: events, 
            currentDate: DateTime.now(),
            overflowItemBuilder: (context, constraints, itemIndex, event) {
              return Text(event.name!);
            },
            ),
    );
  }
}
