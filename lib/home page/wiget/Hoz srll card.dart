import 'package:flutter/material.dart';

import '../../Core/image assets/Image Assets.dart';
import 'CARD.dart';

class horzantil extends StatelessWidget {
  const horzantil({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          card(Price: "4.25 jd", ItemName: "Match", photo: img.match),
          card(Price: "5.00 jd", ItemName: "ice amricano",photo: img.Iamricano),
          card(Price: "6.25 jd", ItemName: "essperso", photo: img.essperso),
          card(Price: "4.25 jd", ItemName: "icw tea", photo: img.itea),
        ],
      ),
    );
  }
}
