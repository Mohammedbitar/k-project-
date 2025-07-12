import 'package:flutter/material.dart';
import 'package:four_project/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'all log and  splash/view/log in.dart';
import 'all log and  splash/view/splash screen.dart';
import 'draft/home Secren.dart';
import 'home page/view/home screen.dart';

void main() {
  runApp(
      MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
  child: MyApp(),

      ),

  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: splasch(),
    );
  }
}


