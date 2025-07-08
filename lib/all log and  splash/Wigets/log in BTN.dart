import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return
      SizedBox( width:  width * .4,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
            WidgetStateProperty.all(
              Colors.black,
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
            MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 12),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          ),
        ),
      );



  }
}

