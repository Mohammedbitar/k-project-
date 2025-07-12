import 'package:flutter/material.dart';

class txtFild extends StatelessWidget {
  final TextEditingController textController;

  txtFild({super.key,
    required this.labeltext,
    required this.textController
  });

  final String labeltext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      autofocus: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $labeltext';
        }
      },

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
