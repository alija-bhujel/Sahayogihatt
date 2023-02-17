import 'package:flutter/material.dart';
import 'package:sahayogi_hatt/pages/homepage.dart';
import 'package:sahayogi_hatt/pages/login.dart';
import 'package:sahayogi_hatt/pages/raiser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donation App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
