import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'log in.dart';

class splasch extends StatefulWidget {
  const splasch({super.key});

  @override
  State<splasch> createState() => _splaschState();
}

class _splaschState extends State<splasch> {
  @override
 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogIn()));

    });
    }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(

        child: Align(
          alignment: Alignment.center ,
          child: Column(
            children: [
              SizedBox(
                height: 100),
              Text("k coffee house "
            ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold
                  ,fontFamily: 'Cormorant SC'),),
              Image.asset("Assets/Image/IMG-20241208-WA0047.jpg",width: 300,
                height: 400,),
              Text("PRWMUIM QUALITY COFFEE ",style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold,letterSpacing: 7.5 )),
              SizedBox(height: 15,),
              const CupertinoActivityIndicator(

                radius: 25,
                color: Colors.black,
              )


              
          ]
                ),
        ),




      ));
  }
}









