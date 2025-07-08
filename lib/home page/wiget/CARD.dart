import 'package:flutter/material.dart';
class card extends StatelessWidget {
  const card({super.key, this.Price, this.ItemName, this.photo});
  final Price ;
  final ItemName ;
  final photo ;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .3,
      width: width * .6,
      child: Card(
        elevation: 5 ,
        // clipBehavior: Clip.values.first ,
        color: Colors.white30,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                photo,
                height: height * .2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ItemName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Align(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Text("price : "),
                    SizedBox(height: 4),
                    Text(Price),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}