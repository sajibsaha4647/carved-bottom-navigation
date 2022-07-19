import 'package:flutter/material.dart';

import 'A.dart';
import 'B.dart';
import 'C.dart';
import 'D.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

  class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    State<HomePage> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {

    final pages = [
      A(),
      B(),
      C(),
      D()
    ];

    @override
    Widget build(BuildContext context) {
      return SafeArea(child: Scaffold(
          appBar: AppBar(
            title: Text("Carved bottom navigation"),
          ),
        body: Container(

        ),
      ));
    }
  }


