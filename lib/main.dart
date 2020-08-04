import 'package:flutter/material.dart';

import 'package:list_dynamic/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Dynamic',
      home: ListScreen(),
    );
  }
}
