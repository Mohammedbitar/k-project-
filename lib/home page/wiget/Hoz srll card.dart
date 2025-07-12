import 'package:flutter/material.dart';

import '../../Core/image assets/Image Assets.dart';
import 'CARD.dart';

class FoodCardS extends StatelessWidget {
  const FoodCardS ({super.key,});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          card(Price: "5.00", ItemName: "Pizza" ,photo: img.margrita),
          card(Price: "4.50", ItemName: "Avocado Salad" ,photo: img.Avocado),
          card(Price: "4.00", ItemName: "pasta" ,photo: img.aripta),
          card(Price: "4.75", ItemName: "Granola" ,photo: img.Granola),
        ],
      ),
    );
  }
}

class DrinkCards extends StatelessWidget {
  const DrinkCards ({super.key,});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          card(Price: "5.00", ItemName: "match" ,photo: img.match),
          card(Price: "3.00", ItemName: "Espresso" ,photo: img.essperso),
          card(Price: "4.75", ItemName: "Ice tea" ,photo: img.itea),
          card(Price: "4.00", ItemName: "ice Amircano" ,photo: img.Iamricano),
        ],
      ),
    );
  }
}

class Coffeebag extends StatelessWidget {
  const Coffeebag ({super.key,});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          card(Price: "7.00", ItemName: "250g Coffee Beans" ,photo: img.cofeeBag1),
          card(Price: "7.50", ItemName: "300g Coffee Beans" ,photo: img.cofeeBag2),
          card(Price: "9.00", ItemName: "500g Coffee Beans" ,photo: img.cofeeBag3),
          card(Price: "15.00", ItemName: "900g Coffee Beans" ,photo: img.cofeeBag4),
        ],
      ),
    );
  }
}
