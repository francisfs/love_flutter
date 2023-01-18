import 'package:flutter/material.dart';
import 'package:to_do/cadastro.dart';
import 'list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Lista de tarefas',
      routes:{
        '/': ((context) => ListPage()),
        '/cadastro':((context) => const Cadastro())
        
                
      },
      //initialRoute: '/cadastro',
      
      
    );
  }
}
