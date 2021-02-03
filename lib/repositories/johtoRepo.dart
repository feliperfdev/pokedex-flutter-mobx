import 'package:dio/dio.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/models/pokeApiJohto.dart';

class JohtoRepository {
  final dio = Dio();

  Future<List<PokeAPIJohto>> loadPokeAPIJohto() async {
    final response = await dio.get(ConstsAPI.pokeAPIJohto);
    final list = response.data as List;

    List<PokeAPIJohto> _johtodex;
    _johtodex = [];
    try {
      // if (response.statusCode == 200) print(response.statusCode.toString());
      for (var poke in list) {
        final pokemon = PokeAPIJohto.fromJson(poke);
        _johtodex.add(pokemon);
      }
    } catch (e) {
      print('Response API error');
      return null;
    }
    return _johtodex;
  }
}
