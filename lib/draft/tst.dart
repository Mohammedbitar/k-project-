import 'package:flutter/material.dart';
import '../Core/image assets/Image Assets.dart';
import '../all log and  splash/Wigets/log in BTN.dart';
import '../home page/wiget/CARD.dart';


class tst extends StatelessWidget {
  const tst({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:
          card(Price: "100 jd", ItemName: "Tea", photo:img.match,)
      ),
    );
  }
}
