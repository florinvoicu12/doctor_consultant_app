import 'package:doctor_consultant_app/constants.dart';
import 'package:doctor_consultant_app/screens/new_welcome_screen.dart';
import 'package:doctor_consultant_app/screens/welcome_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Healthcare - Doctor Consultation App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryColor,
          textTheme: Theme.of(context).textTheme.apply(displayColor: textColor),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.all(defaultPadding))),
          inputDecorationTheme: InputDecorationTheme(
              border: textFieldBorder,
              enabledBorder: textFieldBorder,
              focusedBorder: textFieldBorder)),
      home: const NewWelcomeScreen(),
    );
  }
}
