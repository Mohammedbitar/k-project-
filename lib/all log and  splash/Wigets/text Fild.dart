import 'package:flutter/material.dart';

class txtFild extends StatelessWidget {
  const txtFild({
    super.key, required this.labeltext,
  });
  final String labeltext ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labeltext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black, width: 2),


        ),

      ),

    );
  }
}

