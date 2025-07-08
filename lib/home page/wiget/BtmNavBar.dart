import 'package:flutter/material.dart';

class btmNavBar extends StatelessWidget {
  const btmNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white54,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(label: "home" ,icon: Icon(Icons.home,color: Colors.black54,)),
          BottomNavigationBarItem(label: "search", icon: Icon(Icons.search,color: Colors.black54,)),
          BottomNavigationBarItem(label: "Qr Code",icon: Icon(Icons.qr_code,color: Colors.black54,)),
          BottomNavigationBarItem(label: "profile",icon: Icon(Icons.person,color: Colors.black54,)),
          BottomNavigationBarItem(label: "list",icon: Icon(Icons.list, color: Colors.black54,)),

        ] );

  }
}