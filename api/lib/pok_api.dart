import 'package:dio/dio.dart';

class PokemonApi {
  final Dio dio = Dio();
}

void getHttp() async {
  try {
    var response = await Dio().get('http://www.google.com');
    print(response);
  } catch (e) {
    print(e);
  }
}
