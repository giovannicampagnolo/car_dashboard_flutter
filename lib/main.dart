import 'package:car_dashboard_flutter/hmi_dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'car dashboard',
      theme: ThemeData.dark(),
      home: const HmiDashboard(),
    );
  }
}
