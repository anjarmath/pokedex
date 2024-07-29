// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonsModelImpl _$$PokemonsModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonsModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      classification: json['classification'] as String,
    );

Map<String, dynamic> _$$PokemonsModelImplToJson(_$PokemonsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'classification': instance.classification,
    };
