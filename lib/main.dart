import 'package:bank_project/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Project',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          iconTheme: IconThemeData(
            color: Colors.white,
          )),
      home: const HomePage(),
    );
  }
}
