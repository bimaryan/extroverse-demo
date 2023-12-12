import 'package:extroverse_aplikasi/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extroverse',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}
