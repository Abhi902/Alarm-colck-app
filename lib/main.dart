import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  String hour = '00';
  String minute = '00';

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('Alarm'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            hour = value;
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            minute = value;
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: TextButton(
                    child: const Text(
                      'Create alarm',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      int hours = int.parse(hour);
                      int minutes = int.parse(minute);
                      FlutterAlarmClock.createAlarm(hours, minutes);
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
