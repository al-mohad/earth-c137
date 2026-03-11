import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/character_model.dart';
import '../../data/repositories/character_repository.dart';

part 'character_provider.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';

  void updateQuery(String query) {
    state = query;
  }
}

@riverpod
Future<List<Character>> characters(Ref ref) async {
  final query = ref.watch(searchQueryProvider);
  final repository = ref.watch(characterRepositoryProvider);

  try {
    final response = await repository.getCharacters(
      name: query.isEmpty ? null : query,
      page: 1,
    );
    return response.results;
  } catch (e) {
    return [];
  }
}
