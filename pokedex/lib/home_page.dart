import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'pokemon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Data>> pokemons;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pokemons = pegarPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pokemons'),
      ),
      body: Center(
        child: FutureBuilder<List<Data>>(
          future: pokemons,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    //Usuario usuario = Usuario();
                    Data datapok = snapshot.data![index];
                    return ListTile(
                      title: Text(datapok.name!),
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

  Future<List<Data>> pegarPokemons() async {
    var url = Uri.parse('http://104.131.18.84/pokemon/?limit=1&page=0');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      List listaDataPok = json.decode(response.body);
      return listaDataPok.map((json) => Data.fromJson(json)).toList();
    } else {
      throw Exception("erro não foi possível carregar os usuários");
    }
  }
}
