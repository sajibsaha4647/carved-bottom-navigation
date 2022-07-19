import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

    var page = 0;

    final pages = [
      A(),
      B(),
      C(),
      D(),
      D()
    ];

    @override
    Widget build(BuildContext context) {
      return SafeArea(child: Scaffold(
          appBar: AppBar(
            title: Text("Carved bottom navigation"),
          ),
        bottomNavigationBar: CurvedNavigationBar(
          index:0,
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration( milliseconds: 500),
          onTap: (index){
           setState(() {
             page = index ;
           });
          },
          items: [
              Icon(Icons.account_balance),
              Icon(Icons.camera),
              Icon(Icons.photo),
              Icon(Icons.favorite_outline),
              Icon(Icons.favorite_outline)
        ],
        ),
        body: pages[page],
      ));
    }
  }


