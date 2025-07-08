import 'package:flutter/material.dart';class TitNameMenu extends StatelessWidget {
  const TitNameMenu({super.key, this.MenuName});

  final MenuName;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {},
      child: Row(children: [
        Text(MenuName)
        , SizedBox(width: 8)
        , Icon(Icons.arrow_forward_ios_sharp)
      ],

      ),
    );
  }
}