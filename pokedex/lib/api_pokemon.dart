import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'pokemon.dart';

class ApiPokeRest {
  void apiPoke() async {
    var url = Uri.parse('http://104.131.18.84/pokemon/?limit=5&page=0');

    /* Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});*/

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var pokemonsData = jsonResponse['data'];
      Pokemon.fromJson(jsonResponse);

      print('o nome do pokemon é : $pokemonsData');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    print(response.body);
    print(response.statusCode);
  }
}
/*


Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey[200],
        child: ListView.builder(
          itemCount: listPoke.length,
          itemBuilder: ((context, index) {
            return Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text(listPoke[index]),
                onTap: () {
                  print('onTap pressed');
                },
              ),
            );
          }),
        ),
      ),*/