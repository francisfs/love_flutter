import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({super.key});

  List<String> list = ['1'];

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
          return Column(
            children: [
              Container(
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Text(list[index]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastro');
                  },
                  child: Icon(Icons.add),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
