import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/dio_provider.dart';
import '../api/character_api.dart';
import '../models/character_model.dart';

part 'character_repository.g.dart';

@riverpod
CharacterRepository characterRepository(CharacterRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  final api = CharacterApi(dio);
  return CharacterRepository(api);
}

class CharacterRepository {
  final CharacterApi _api;

  CharacterRepository(this._api);

  Future<CharacterResponse> getCharacters({String? name, int page = 1}) {
    return _api.getCharacters(name: name, page: page);
  }
}
