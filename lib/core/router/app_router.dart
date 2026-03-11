import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/characters/data/models/character_model.dart';
import '../../features/characters/presentation/screens/character_detail_screen.dart';
import '../../features/characters/presentation/screens/character_list_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CharacterListScreen(),
        routes: [
          GoRoute(
            path: 'character',
            builder: (context, state) {
              final character = state.extra as Character;
              return CharacterDetailScreen(character: character);
            },
          ),
        ],
      ),
    ],
  );
}
