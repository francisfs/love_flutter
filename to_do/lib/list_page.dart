import 'package:flutter/material.dart';
import 'package:to_do/cadastro.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('listpage'),
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
          return SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  style: TextStyle(fontSize: 20),
                  list[index],
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /*var todo = await Navigator.pushNamed(context, '/cadastro');*/
          var todo = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => Cadastro(),
            ),
          );
          setState(() {
            list.add(todo);
          });
        },
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}
