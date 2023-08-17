import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/LogIn.dart';
import 'package:flutter_application_1/Pages/SingUp.dart';
import 'package:flutter_application_1/Pages/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => Welcome(),
        "/LogIn": (context) => LogIn(),
        "/SingUp": (context) => SingUp(),
      },
    );
  }
}

class ShowApp extends StatelessWidget {
  const ShowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
