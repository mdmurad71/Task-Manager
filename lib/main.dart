import 'package:flutter/material.dart';
import 'package:task_manger/screen/onboarding/emailVerification.dart';
import 'package:task_manger/screen/onboarding/login.dart';
import 'package:task_manger/screen/onboarding/pinVerification.dart';
import 'package:task_manger/screen/onboarding/registration.dart';
import 'package:task_manger/screen/onboarding/setPassword.dart';
import 'package:task_manger/screen/onboarding/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',

       initialRoute: '/',
      routes: {
        '/splash': (context)=>splash(),
        '/': (context)=>login(),
        '/registration': (context)=>registration(),
        '/emailVerification': (context)=>emailVerification(),
        '/pinVerification': (context)=>pinVerification(),
        '/setPassword': (context)=>setPassword(),

      },

    );
  }
}


