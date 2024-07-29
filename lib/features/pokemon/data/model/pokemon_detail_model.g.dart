// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailModelImpl _$$PokemonDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonDetailModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      classification: json['classification'] as String,
      image: json['image'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      weight: const PokemonDimensionConverter()
          .fromJson(json['weight'] as Map<String, dynamic>),
      height: const PokemonDimensionConverter()
          .fromJson(json['height'] as Map<String, dynamic>),
      resistant:
          (json['resistant'] as List<dynamic>).map((e) => e as String).toList(),
      attacks: const PokemonAttackConverter()
          .fromJson(json['attacks'] as Map<String, dynamic>),
      weaknesses: (json['weaknesses'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fleeRate: (json['fleeRate'] as num).toDouble(),
      maxCP: (json['maxCP'] as num).toInt(),
      evolutions: (json['evolutions'] as List<dynamic>?)
          ?.map((e) => PokemonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolutionRequirements: _$JsonConverterFromJson<Map<String, dynamic>,
              PokemonEvolutionRequirement>(json['evolutionRequirements'],
          const PokemonEvolutionRequirementConverter().fromJson),
      maxHP: (json['maxHP'] as num).toInt(),
    );

Map<String, dynamic> _$$PokemonDetailModelImplToJson(
        _$PokemonDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'classification': instance.classification,
      'image': instance.image,
      'types': instance.types,
      'weight': const PokemonDimensionConverter().toJson(instance.weight),
      'height': const PokemonDimensionConverter().toJson(instance.height),
      'resistant': instance.resistant,
      'attacks': const PokemonAttackConverter().toJson(instance.attacks),
      'weaknesses': instance.weaknesses,
      'fleeRate': instance.fleeRate,
      'maxCP': instance.maxCP,
      'evolutions': instance.evolutions,
      'evolutionRequirements': _$JsonConverterToJson<Map<String, dynamic>,
              PokemonEvolutionRequirement>(instance.evolutionRequirements,
          const PokemonEvolutionRequirementConverter().toJson),
      'maxHP': instance.maxHP,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
