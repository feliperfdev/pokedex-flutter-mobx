import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/api_consts.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/models/descriptionApi.dart';
part 'description_store.g.dart';

class DescriptionStore = _DescriptionStoreBase with _$DescriptionStore;

abstract class _DescriptionStoreBase with Store {
  Dio dio = Dio();

  List<DescriptionAPI> _apiDescription;

  @action
  fetchPokeAPIDescription(String name) {
    _apiDescription = null;
    loadPokeAPIDescription(name).then((value) {
      _apiDescription = value;
    });
  }

  Future<List<DescriptionAPI>> loadPokeAPIDescription(String name) async {
    name = name.toLowerCase();
    List<String> separa = name.split(' ');
    if (separa.length == 2 && (separa[0] == 'Mega')) {
      name = separa[1];
    }

    final response = await dio.get(PokeDescriptions().getDescription(name));
    final list = response.data as List;

    List<DescriptionAPI> _descriptions;
    _descriptions = [];
    try {
      // if (response.statusCode == 200) print(response.statusCode.toString());
      for (var poke in list) {
        final pokemon = DescriptionAPI.fromJson(poke);
        _descriptions.add(pokemon);
      }
      print('Sucesso! Adicionou na lista!');
      print('Foram adicionados ${_descriptions.length} pokémon na lista!');
    } catch (e) {
      print('Response API error');
      return null;
    }
    print('Sucesso! Retornou!');
    return _descriptions;
  }
}
