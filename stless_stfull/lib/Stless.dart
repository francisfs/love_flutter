import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'ffs',
              style: TextStyle(fontSize: 45.0),
            ),
          ),
        ),
        body: Center(
            child: Text(
          "tela",
          style: TextStyle(fontSize: 45),
        )),
      ),
    );
  }
}
