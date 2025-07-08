import 'package:flutter/material.dart';

class splasch extends StatefulWidget {
  const splasch({super.key});

  @override
  State<splasch> createState() => _splaschState();
}

class _splaschState extends State<splasch> {
  @override
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
              Text("PRWMUIM QUALITY COFFEE ",style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold,letterSpacing: 7.5 ))


              
          ]
                ),
        ),




      ));
  }
}
