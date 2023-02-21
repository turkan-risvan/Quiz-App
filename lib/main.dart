
// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
 
import 'package:quizapp/screens/quiz/quiz_screen.dart';

import 'screens/quiz/scores/score_screen.dart';
import 'screens/welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
       debugShowCheckedModeBanner: false,
       theme: ThemeData.dark(),
      home: WelcomeScreen(),
    );
  }
}