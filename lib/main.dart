import 'package:animation/container_transition/home_page.dart';
import 'package:animation/fade_transition/fade_transition_page.dart';
import 'package:animation/shared_axis_transition/shared_axis_page.dart';
import 'package:flutter/material.dart';

import 'shared_axis_transition/first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }
}
