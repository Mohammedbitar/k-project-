import 'package:flutter/material.dart';

import 'all log and  splash/view/log in.dart';
import 'all log and  splash/view/splash screen.dart';
import 'draft/home Secren.dart';
import 'home page/view/home screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


      ),
      home: homePage(),
    );
  }
}


