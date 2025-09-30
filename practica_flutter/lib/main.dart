import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weekly Calendar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WeeklyCalendar(),
    );
  }
}

class WeeklyCalendar extends StatelessWidget {
  const WeeklyCalendar({super.key});
  final double size02 = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Weekly Calendar',
                style: TextStyle(fontSize: size02),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
