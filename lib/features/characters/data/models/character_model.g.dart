// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) =>
    _CharacterResponse(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterResponseToJson(_CharacterResponse instance) =>
    <String, dynamic>{'info': instance.info, 'results': instance.results};

_Info _$InfoFromJson(Map<String, dynamic> json) => _Info(
  count: (json['count'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  next: json['next'] as String?,
  prev: json['prev'] as String?,
);

Map<String, dynamic> _$InfoToJson(_Info instance) => <String, dynamic>{
  'count': instance.count,
  'pages': instance.pages,
  'next': instance.next,
  'prev': instance.prev,
};

_Character _$CharacterFromJson(Map<String, dynamic> json) => _Character(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  type: json['type'] as String,
  gender: json['gender'] as String,
  origin: LocationOrigin.fromJson(json['origin'] as Map<String, dynamic>),
  location: LocationOrigin.fromJson(json['location'] as Map<String, dynamic>),
  image: json['image'] as String,
  episode: (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
  url: json['url'] as String,
  created: json['created'] as String,
);

Map<String, dynamic> _$CharacterToJson(_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'type': instance.type,
      'gender': instance.gender,
      'origin': instance.origin,
      'location': instance.location,
      'image': instance.image,
      'episode': instance.episode,
      'url': instance.url,
      'created': instance.created,
    };

_LocationOrigin _$LocationOriginFromJson(Map<String, dynamic> json) =>
    _LocationOrigin(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$LocationOriginToJson(_LocationOrigin instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
