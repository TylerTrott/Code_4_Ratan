import 'package:flutter/material.dart';
import 'package:to_do/screens/toDoList.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ToDo',
        theme: ThemeData(
          primarySwatch: MaterialColor(
            0XFF7B3F00,
            const <int, Color>{
              50: const Color(0XFF7B3F00),
              100: const Color(0XFF7B3F00),
              200: const Color(0XFF7B3F00),
              300: const Color(0XFF7B3F00),
              400: const Color(0XFF7B3F00),
              500: const Color(0XFF7B3F00),
              600: const Color(0XFF7B3F00),
              700: const Color(0XFF7B3F00),
              800: const Color(0XFF7B3F00),
              900: const Color(0XFF7B3F00),
            },
          ),
          scaffoldBackgroundColor: Color(0XFFF1EBE5),
          accentColor: Color(0XFF7B3F00),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: toDoList.id,
        routes: {
          toDoList.id:(context)=> toDoList(),
        });
  }
}
