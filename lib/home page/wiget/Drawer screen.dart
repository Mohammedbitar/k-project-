import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("Assets/Image/blacky.jpeg"),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "user name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "LVL",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 8,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        Container(
                          height: 8,
                          width: width * .5,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text("80/100 EXP"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
              children: [ Icon(Icons.home, color: Colors.white),

                SizedBox(width: 10),
                Text("Home", style: TextStyle(color: Colors.white),),]
          ),
          SizedBox(height: 10),
          Row(
              children: [ Icon(Icons.home, color: Colors.white),

                SizedBox(width: 10),
                Text("Home", style: TextStyle(color: Colors.white),),]
          ),

          SizedBox(height: 20),
          Row(
              children: [ Icon(Icons.home, color: Colors.white),

                SizedBox(width: 10),
                Text("Home", style: TextStyle(color: Colors.white),),]
          ),
          SizedBox(height: 10),
          Row(
              children: [ Icon(Icons.home, color: Colors.white),

                SizedBox(width: 10),
                Text("Home", style: TextStyle(color: Colors.white),),]
          ),
        ],


      ),
    );
  }
}