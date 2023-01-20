import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:to_do/cadastro.dart';
import 'package:to_do/colors.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> list = [];
  int sequencia = 0;
  bool checkBoxAcionado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Lista de Tarefas'),
      ),
      body: ListView.separated(
        separatorBuilder: ((context, index) {
          return Divider(
            height: 20,
          );
        }),
        padding: const EdgeInsets.all(20),
        itemCount: list.length,
        itemBuilder: ((context, index) {
          sequencia = index + 1;
          return Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            height: 50,
            width: 40,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    pushBotao();
                  },
                  child: Row(
                    children: [
                      Icon(
                        checkBoxAcionado
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: tdBlue,
                      ),
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 3),
                        child: Text(
                          '$sequencia.',
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Text(
                        style: TextStyle(
                            decoration: checkBoxAcionado
                                ? TextDecoration.lineThrough
                                : null,
                            fontSize: 20),
                        list[index],
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              child: Icon(Icons.delete),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                color: tdRed,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ),
                      ),
                    ],
                  ),
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
        child: const Icon(Icons.add),
      ),
    );
  }

  void pushBotao() {
    setState(() {
      checkBoxAcionado = !checkBoxAcionado;
    });
  }
}
