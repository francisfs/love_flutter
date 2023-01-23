import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'usuario.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Usuario>> usuarios;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usuarios = pegarUsuario();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuários'),
      ),
      body: Center(
        child: FutureBuilder<List<Usuario>>(
          future: usuarios,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder( 
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    //Usuario usuario = Usuario();
                    Usuario usuario = snapshot.data![index];
                    return ListTile(
                      title: Text(usuario.name!),
                      subtitle: Text(usuario.website!),

                    );
                  });
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<List<Usuario>> pegarUsuario() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List listaUsuario = json.decode(response.body);
      return listaUsuario.map((json) => Usuario.fromJson(json)).toList();
    } else {
      throw Exception("erro não foi possível carregar os usuários");
    }
  }
}