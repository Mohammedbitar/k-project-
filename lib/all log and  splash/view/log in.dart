import 'package:flutter/material.dart';
import '../Wigets/feacbook log in btn.dart';
import '../Wigets/googel btn.dart';
import '../Wigets/log in BTN.dart';
import '../Wigets/text Fild.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "K Coffee House",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Cormorant SC',
                        ),
                      ),
                      Image.asset(
                        "Assets/Image/Group 220.jpg",
                        width: 200,
                        height: 300,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * .6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        SizedBox(
                          width: width * 0.8,
                          child: Column(
                            children: [
                              txtFild(labeltext: "username"),
                              SizedBox(height: 10),
                              txtFild(labeltext: "password"),
                              // SizedBox(height: 1),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forget Password",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        LoginBtn(),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            facebookBTN(),
                            SizedBox(width: 10),
                            GoogelBTN(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
