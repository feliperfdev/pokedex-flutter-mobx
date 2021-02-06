import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex_flutter_mobx/constants/app_consts.dart';
import 'package:pokedex_flutter_mobx/models/descriptionApi.dart';
part 'description_store.g.dart';

class DescriptionStore = _DescriptionStoreBase with _$DescriptionStore;

abstract class _DescriptionStoreBase with Store {
  Dio dio = Dio();

  DescriptionAPI _apiDescription;

  @action
  fetchPokeAPIDescription(String name) {
    _apiDescription = null;
    loadPokeAPIDescription(name).then((value) => _apiDescription = value);
  }

  Future<DescriptionAPI> loadPokeAPIDescription(String name) async {
    List<String> separa = name.split(' ');
    name = name.toLowerCase();
    if (separa.length == 2 && (separa[0] == 'Mega')) {
      name = separa[1];
    }
    final response = await dio.get(PokeDescriptions().getDescription(name));
    if (response.statusCode == 200) {
      final rest = jsonDecode(response.data);
      final desc = DescriptionAPI.fromJson(rest);
      print('Sucesso! Retornou!');
      return desc;
    }
  }
}
