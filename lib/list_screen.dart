import 'dart:math';

import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> items = [
    'Maça',
    'Abacaxi',
    'Pipino',
    'Tomate',
    'Mexirica',
    'Laranja',
    'Espinafre',
    'Batata',
    'Beringela'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Dinamica'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(color: Colors.amber),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: IconTheme(
                child: Icon(Icons.access_alarm),
                data: IconThemeData(color: Colors.white),
              ),
            ),
            title: Text(
              items[index],
              style: TextStyle(color: Colors.grey),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
        onPressed: _addItems,
      ),
    );
  }

  void _addItems() {
    setState(() {
      var random = new Random();
      int randomNumber = random.nextInt(999999);
      items.add("Verdura $randomNumber");
    });
  }
}
