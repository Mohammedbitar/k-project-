import 'package:flutter/material.dart';
class funBTN extends StatelessWidget {
  const funBTN({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Text("Memory Board"),
              SizedBox(width: 10),
              Icon(Icons.satellite_rounded),
            ],
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Text("Lucky Roll"),
              SizedBox(width: 10),
              Icon(Icons.sports_esports_outlined),
            ],
          ),
        ),
      ],
    );
  }
}