import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
    required Info info,
    required List<Character> results,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required LocationOrigin origin,
    required LocationOrigin location,
    required String image,
    required List<String> episode,
    required String url,
    required String created,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
class LocationOrigin with _$LocationOrigin {
  const factory LocationOrigin({
    required String name,
    required String url,
  }) = _LocationOrigin;

  factory LocationOrigin.fromJson(Map<String, dynamic> json) =>
      _$LocationOriginFromJson(json);
}
