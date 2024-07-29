// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetailModel _$PokemonDetailModelFromJson(Map<String, dynamic> json) {
  return _PokemonDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get classification => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;
  @PokemonDimensionConverter()
  PokemonDimension get weight => throw _privateConstructorUsedError;
  @PokemonDimensionConverter()
  PokemonDimension get height => throw _privateConstructorUsedError;
  List<String> get resistant => throw _privateConstructorUsedError;
  @PokemonAttackConverter()
  PokemonAttack get attacks => throw _privateConstructorUsedError;
  List<String> get weaknesses => throw _privateConstructorUsedError;
  double get fleeRate => throw _privateConstructorUsedError;
  int get maxCP => throw _privateConstructorUsedError;
  List<PokemonsModel>? get evolutions => throw _privateConstructorUsedError;
  @PokemonEvolutionRequirementConverter()
  PokemonEvolutionRequirement? get evolutionRequirements =>
      throw _privateConstructorUsedError;
  int get maxHP => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailModelCopyWith<PokemonDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailModelCopyWith<$Res> {
  factory $PokemonDetailModelCopyWith(
          PokemonDetailModel value, $Res Function(PokemonDetailModel) then) =
      _$PokemonDetailModelCopyWithImpl<$Res, PokemonDetailModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String classification,
      String image,
      List<String> types,
      @PokemonDimensionConverter() PokemonDimension weight,
      @PokemonDimensionConverter() PokemonDimension height,
      List<String> resistant,
      @PokemonAttackConverter() PokemonAttack attacks,
      List<String> weaknesses,
      double fleeRate,
      int maxCP,
      List<PokemonsModel>? evolutions,
      @PokemonEvolutionRequirementConverter()
      PokemonEvolutionRequirement? evolutionRequirements,
      int maxHP});
}

/// @nodoc
class _$PokemonDetailModelCopyWithImpl<$Res, $Val extends PokemonDetailModel>
    implements $PokemonDetailModelCopyWith<$Res> {
  _$PokemonDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classification = null,
    Object? image = null,
    Object? types = null,
    Object? weight = null,
    Object? height = null,
    Object? resistant = null,
    Object? attacks = null,
    Object? weaknesses = null,
    Object? fleeRate = null,
    Object? maxCP = null,
    Object? evolutions = freezed,
    Object? evolutionRequirements = freezed,
    Object? maxHP = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as PokemonDimension,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as PokemonDimension,
      resistant: null == resistant
          ? _value.resistant
          : resistant // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attacks: null == attacks
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as PokemonAttack,
      weaknesses: null == weaknesses
          ? _value.weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fleeRate: null == fleeRate
          ? _value.fleeRate
          : fleeRate // ignore: cast_nullable_to_non_nullable
              as double,
      maxCP: null == maxCP
          ? _value.maxCP
          : maxCP // ignore: cast_nullable_to_non_nullable
              as int,
      evolutions: freezed == evolutions
          ? _value.evolutions
          : evolutions // ignore: cast_nullable_to_non_nullable
              as List<PokemonsModel>?,
      evolutionRequirements: freezed == evolutionRequirements
          ? _value.evolutionRequirements
          : evolutionRequirements // ignore: cast_nullable_to_non_nullable
              as PokemonEvolutionRequirement?,
      maxHP: null == maxHP
          ? _value.maxHP
          : maxHP // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDetailModelImplCopyWith<$Res>
    implements $PokemonDetailModelCopyWith<$Res> {
  factory _$$PokemonDetailModelImplCopyWith(_$PokemonDetailModelImpl value,
          $Res Function(_$PokemonDetailModelImpl) then) =
      __$$PokemonDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String classification,
      String image,
      List<String> types,
      @PokemonDimensionConverter() PokemonDimension weight,
      @PokemonDimensionConverter() PokemonDimension height,
      List<String> resistant,
      @PokemonAttackConverter() PokemonAttack attacks,
      List<String> weaknesses,
      double fleeRate,
      int maxCP,
      List<PokemonsModel>? evolutions,
      @PokemonEvolutionRequirementConverter()
      PokemonEvolutionRequirement? evolutionRequirements,
      int maxHP});
}

/// @nodoc
class __$$PokemonDetailModelImplCopyWithImpl<$Res>
    extends _$PokemonDetailModelCopyWithImpl<$Res, _$PokemonDetailModelImpl>
    implements _$$PokemonDetailModelImplCopyWith<$Res> {
  __$$PokemonDetailModelImplCopyWithImpl(_$PokemonDetailModelImpl _value,
      $Res Function(_$PokemonDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classification = null,
    Object? image = null,
    Object? types = null,
    Object? weight = null,
    Object? height = null,
    Object? resistant = null,
    Object? attacks = null,
    Object? weaknesses = null,
    Object? fleeRate = null,
    Object? maxCP = null,
    Object? evolutions = freezed,
    Object? evolutionRequirements = freezed,
    Object? maxHP = null,
  }) {
    return _then(_$PokemonDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as PokemonDimension,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as PokemonDimension,
      resistant: null == resistant
          ? _value._resistant
          : resistant // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attacks: null == attacks
          ? _value.attacks
          : attacks // ignore: cast_nullable_to_non_nullable
              as PokemonAttack,
      weaknesses: null == weaknesses
          ? _value._weaknesses
          : weaknesses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fleeRate: null == fleeRate
          ? _value.fleeRate
          : fleeRate // ignore: cast_nullable_to_non_nullable
              as double,
      maxCP: null == maxCP
          ? _value.maxCP
          : maxCP // ignore: cast_nullable_to_non_nullable
              as int,
      evolutions: freezed == evolutions
          ? _value._evolutions
          : evolutions // ignore: cast_nullable_to_non_nullable
              as List<PokemonsModel>?,
      evolutionRequirements: freezed == evolutionRequirements
          ? _value.evolutionRequirements
          : evolutionRequirements // ignore: cast_nullable_to_non_nullable
              as PokemonEvolutionRequirement?,
      maxHP: null == maxHP
          ? _value.maxHP
          : maxHP // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailModelImpl implements _PokemonDetailModel {
  _$PokemonDetailModelImpl(
      {required this.id,
      required this.name,
      required this.classification,
      required this.image,
      required final List<String> types,
      @PokemonDimensionConverter() required this.weight,
      @PokemonDimensionConverter() required this.height,
      required final List<String> resistant,
      @PokemonAttackConverter() required this.attacks,
      required final List<String> weaknesses,
      required this.fleeRate,
      required this.maxCP,
      required final List<PokemonsModel>? evolutions,
      @PokemonEvolutionRequirementConverter()
      required this.evolutionRequirements,
      required this.maxHP})
      : _types = types,
        _resistant = resistant,
        _weaknesses = weaknesses,
        _evolutions = evolutions;

  factory _$PokemonDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String classification;
  @override
  final String image;
  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  @PokemonDimensionConverter()
  final PokemonDimension weight;
  @override
  @PokemonDimensionConverter()
  final PokemonDimension height;
  final List<String> _resistant;
  @override
  List<String> get resistant {
    if (_resistant is EqualUnmodifiableListView) return _resistant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resistant);
  }

  @override
  @PokemonAttackConverter()
  final PokemonAttack attacks;
  final List<String> _weaknesses;
  @override
  List<String> get weaknesses {
    if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknesses);
  }

  @override
  final double fleeRate;
  @override
  final int maxCP;
  final List<PokemonsModel>? _evolutions;
  @override
  List<PokemonsModel>? get evolutions {
    final value = _evolutions;
    if (value == null) return null;
    if (_evolutions is EqualUnmodifiableListView) return _evolutions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @PokemonEvolutionRequirementConverter()
  final PokemonEvolutionRequirement? evolutionRequirements;
  @override
  final int maxHP;

  @override
  String toString() {
    return 'PokemonDetailModel(id: $id, name: $name, classification: $classification, image: $image, types: $types, weight: $weight, height: $height, resistant: $resistant, attacks: $attacks, weaknesses: $weaknesses, fleeRate: $fleeRate, maxCP: $maxCP, evolutions: $evolutions, evolutionRequirements: $evolutionRequirements, maxHP: $maxHP)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._resistant, _resistant) &&
            (identical(other.attacks, attacks) || other.attacks == attacks) &&
            const DeepCollectionEquality()
                .equals(other._weaknesses, _weaknesses) &&
            (identical(other.fleeRate, fleeRate) ||
                other.fleeRate == fleeRate) &&
            (identical(other.maxCP, maxCP) || other.maxCP == maxCP) &&
            const DeepCollectionEquality()
                .equals(other._evolutions, _evolutions) &&
            (identical(other.evolutionRequirements, evolutionRequirements) ||
                other.evolutionRequirements == evolutionRequirements) &&
            (identical(other.maxHP, maxHP) || other.maxHP == maxHP));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      classification,
      image,
      const DeepCollectionEquality().hash(_types),
      weight,
      height,
      const DeepCollectionEquality().hash(_resistant),
      attacks,
      const DeepCollectionEquality().hash(_weaknesses),
      fleeRate,
      maxCP,
      const DeepCollectionEquality().hash(_evolutions),
      evolutionRequirements,
      maxHP);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailModelImplCopyWith<_$PokemonDetailModelImpl> get copyWith =>
      __$$PokemonDetailModelImplCopyWithImpl<_$PokemonDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetailModel implements PokemonDetailModel {
  factory _PokemonDetailModel(
      {required final String id,
      required final String name,
      required final String classification,
      required final String image,
      required final List<String> types,
      @PokemonDimensionConverter() required final PokemonDimension weight,
      @PokemonDimensionConverter() required final PokemonDimension height,
      required final List<String> resistant,
      @PokemonAttackConverter() required final PokemonAttack attacks,
      required final List<String> weaknesses,
      required final double fleeRate,
      required final int maxCP,
      required final List<PokemonsModel>? evolutions,
      @PokemonEvolutionRequirementConverter()
      required final PokemonEvolutionRequirement? evolutionRequirements,
      required final int maxHP}) = _$PokemonDetailModelImpl;

  factory _PokemonDetailModel.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get classification;
  @override
  String get image;
  @override
  List<String> get types;
  @override
  @PokemonDimensionConverter()
  PokemonDimension get weight;
  @override
  @PokemonDimensionConverter()
  PokemonDimension get height;
  @override
  List<String> get resistant;
  @override
  @PokemonAttackConverter()
  PokemonAttack get attacks;
  @override
  List<String> get weaknesses;
  @override
  double get fleeRate;
  @override
  int get maxCP;
  @override
  List<PokemonsModel>? get evolutions;
  @override
  @PokemonEvolutionRequirementConverter()
  PokemonEvolutionRequirement? get evolutionRequirements;
  @override
  int get maxHP;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDetailModelImplCopyWith<_$PokemonDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
