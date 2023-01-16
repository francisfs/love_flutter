import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  List<String> list = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('teste'),
      ),
      body: ListView.separated(
        separatorBuilder: ((context, index) {
          return const Divider(
            thickness: 3,
          );
        }),
        padding: EdgeInsets.all(20),
        itemCount: list.length,
        itemBuilder: ((context, index) {
          return Container(
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(list[index]),
            ),
          );
        }),
      ),
    );
  }
}
