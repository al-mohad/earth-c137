import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/character_model.dart';

part 'character_api.g.dart';

@RestApi()
abstract class CharacterApi {
  factory CharacterApi(Dio dio, {String baseUrl}) = _CharacterApi;

  @GET('/character')
  Future<CharacterResponse> getCharacters({
    @Query('name') String? name,
    @Query('page') int? page,
  });
}
