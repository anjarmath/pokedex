// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonsModel _$PokemonsModelFromJson(Map<String, dynamic> json) {
  return _PokemonsModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonsModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get classification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonsModelCopyWith<PokemonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsModelCopyWith<$Res> {
  factory $PokemonsModelCopyWith(
          PokemonsModel value, $Res Function(PokemonsModel) then) =
      _$PokemonsModelCopyWithImpl<$Res, PokemonsModel>;
  @useResult
  $Res call({String id, String name, String image, String classification});
}

/// @nodoc
class _$PokemonsModelCopyWithImpl<$Res, $Val extends PokemonsModel>
    implements $PokemonsModelCopyWith<$Res> {
  _$PokemonsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? classification = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonsModelImplCopyWith<$Res>
    implements $PokemonsModelCopyWith<$Res> {
  factory _$$PokemonsModelImplCopyWith(
          _$PokemonsModelImpl value, $Res Function(_$PokemonsModelImpl) then) =
      __$$PokemonsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String image, String classification});
}

/// @nodoc
class __$$PokemonsModelImplCopyWithImpl<$Res>
    extends _$PokemonsModelCopyWithImpl<$Res, _$PokemonsModelImpl>
    implements _$$PokemonsModelImplCopyWith<$Res> {
  __$$PokemonsModelImplCopyWithImpl(
      _$PokemonsModelImpl _value, $Res Function(_$PokemonsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? classification = null,
  }) {
    return _then(_$PokemonsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      classification: null == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonsModelImpl implements _PokemonsModel {
  _$PokemonsModelImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.classification});

  factory _$PokemonsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String classification;

  @override
  String toString() {
    return 'PokemonsModel(id: $id, name: $name, image: $image, classification: $classification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.classification, classification) ||
                other.classification == classification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, classification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonsModelImplCopyWith<_$PokemonsModelImpl> get copyWith =>
      __$$PokemonsModelImplCopyWithImpl<_$PokemonsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonsModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonsModel implements PokemonsModel {
  factory _PokemonsModel(
      {required final String id,
      required final String name,
      required final String image,
      required final String classification}) = _$PokemonsModelImpl;

  factory _PokemonsModel.fromJson(Map<String, dynamic> json) =
      _$PokemonsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get classification;
  @override
  @JsonKey(ignore: true)
  _$$PokemonsModelImplCopyWith<_$PokemonsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
