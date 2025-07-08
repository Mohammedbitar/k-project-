import 'package:flutter/material.dart';
import '../../Core/image assets/Image Assets.dart';
import '../home page/wiget/Banner.dart';
import '../wiget/BtmNavBar.dart';
import '../wiget/CARD.dart';
import '../wiget/Drawer screen.dart';
import '../wiget/FunBTN.dart';
import '../wiget/Hoz srll card.dart';
import '../wiget/Tit Name menu.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
         bottomNavigationBar: btmNavBar(),
        backgroundColor: Colors.white,
        appBar: AppBar(),
        drawer: Drawer(
          backgroundColor: Colors.black,
            child: DrawerScreen (),
        ),
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: height * .3,
                width: double.infinity,
                child: PageView(
                  children: [
                    Image.asset(
                      "Assets/Image/IMG-20241208-WA0045.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "Assets/Image/IMG-20241208-WA0044.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              funBTN(),
              SizedBox(height: 10),
              TitNameMenu(MenuName: "Drink Menu"),
              SizedBox(height: 10),
              horzantil(),
              SizedBox(height: 10),
              TitNameMenu(MenuName: "Food Menu"),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    card(Price: "4.25 jd", ItemName: "Match", photo: img.match),
                    card(
                      Price: "5.00 jd",
                      ItemName: "ice amricano",
                      photo: img.Iamricano,
                    ),
                    card(
                      Price: "6.25 jd",
                      ItemName: "essperso",
                      photo: img.essperso,
                    ),
                    card(
                      Price: "4.25 jd",
                      ItemName: "icw tea",
                      photo: img.itea,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TitNameMenu(MenuName: "Coffee beans"),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    card(Price: "4.25 jd", ItemName: "Match", photo: img.match),
                    card(
                      Price: "5.00 jd",
                      ItemName: "ice amricano",
                      photo: img.Iamricano,
                    ),
                    card(
                      Price: "6.25 jd",
                      ItemName: "essperso",
                      photo: img.essperso,
                    ),
                    card(
                      Price: "4.25 jd",
                      ItemName: "icw tea",
                      photo: img.itea,
                    ),
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



