// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
// import 'package:four_project/draft/Dbhelper.dart';
//
// class ItemlistPage extends StatefulWidget {
//   @override
//   _ItemlistPageState createState() => _ItemlistPageState();
// }
//
// class _ItemlistPageState extends State<ItemlistPage> {
//   final dbHelper = DatabaseHelper();
//   List<Map<String, dynamic>> _items = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _refreshItems();
//   }
//
//   void _refreshItems() async {
//     final data = await dbHelper.getItems();
//     setState(() {
//       _items = data;
//     });
//   }
//
//   void _addItem() async {
//     await dbHelper.insert({
//       'name': 'New Item',
//       'barcode': '1234567890',
//       'price': 10.99,
//     });
//     _refreshItems();
//   }
//
//   void _deleteItem(int id) async {
//     await dbHelper.delete(id);
//     _refreshItems();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('SQLITE WIT SQFLITE')),
//       body: ListView.builder(
//         itemCount: _items.length,
//         itemBuilder:
//             (BuildContext context, int index) => ListTile(
//               title: Text(_items[index]['name']),
//               subtitle: Text("Barcode: ${_items[index]['barcode']}"),
//               trailing: IconButton(
//                 icon: Icon(Icons.delete),
//                 onPressed: () => _deleteItem(_items[index]['id']),
//               ),
//             ),
//       ),
//     );
//     floatingActionButton:
//     FloatingActionButton(onPressed: _addItem, child: Icon(Icons.add));
//   }
// }
