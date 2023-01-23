import 'package:flutter/material.dart';
import 'package:to_do/cadastro.dart';
import 'list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de tarefas',
      routes: {
        '/': ((context) => ListPage()),
        '/cadastro': ((context) => Cadastro()),
      },
      //initialRoute: '/cadastro',
    );
  }
}
