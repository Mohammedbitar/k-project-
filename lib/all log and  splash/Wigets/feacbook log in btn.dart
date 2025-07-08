import 'package:flutter/material.dart';

class facebookBTN extends StatelessWidget {
  const facebookBTN({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery
        .of(context)
        .size
        .width;
    final double height = MediaQuery
        .of(context)
        .size
        .height;
    return SizedBox(width: width * .44,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
          WidgetStateProperty.all(
            Color(0xff1877F2),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Facebook Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),


          ],
        ),
      ),
    );
  }
}