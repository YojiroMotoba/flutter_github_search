// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repository_item_owner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepositoryItemOwnerModel _$SearchRepositoryItemOwnerModelFromJson(
    Map<String, dynamic> json) {
  return _SearchRepositoryItemOwnerModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRepositoryItemOwnerModel {
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepositoryItemOwnerModelCopyWith<SearchRepositoryItemOwnerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoryItemOwnerModelCopyWith<$Res> {
  factory $SearchRepositoryItemOwnerModelCopyWith(
          SearchRepositoryItemOwnerModel value,
          $Res Function(SearchRepositoryItemOwnerModel) then) =
      _$SearchRepositoryItemOwnerModelCopyWithImpl<$Res,
          SearchRepositoryItemOwnerModel>;
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class _$SearchRepositoryItemOwnerModelCopyWithImpl<$Res,
        $Val extends SearchRepositoryItemOwnerModel>
    implements $SearchRepositoryItemOwnerModelCopyWith<$Res> {
  _$SearchRepositoryItemOwnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRepositoryItemOwnerModelImplCopyWith<$Res>
    implements $SearchRepositoryItemOwnerModelCopyWith<$Res> {
  factory _$$SearchRepositoryItemOwnerModelImplCopyWith(
          _$SearchRepositoryItemOwnerModelImpl value,
          $Res Function(_$SearchRepositoryItemOwnerModelImpl) then) =
      __$$SearchRepositoryItemOwnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class __$$SearchRepositoryItemOwnerModelImplCopyWithImpl<$Res>
    extends _$SearchRepositoryItemOwnerModelCopyWithImpl<$Res,
        _$SearchRepositoryItemOwnerModelImpl>
    implements _$$SearchRepositoryItemOwnerModelImplCopyWith<$Res> {
  __$$SearchRepositoryItemOwnerModelImplCopyWithImpl(
      _$SearchRepositoryItemOwnerModelImpl _value,
      $Res Function(_$SearchRepositoryItemOwnerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$SearchRepositoryItemOwnerModelImpl(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRepositoryItemOwnerModelImpl
    implements _SearchRepositoryItemOwnerModel {
  const _$SearchRepositoryItemOwnerModelImpl({this.avatarUrl = ''});

  factory _$SearchRepositoryItemOwnerModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SearchRepositoryItemOwnerModelImplFromJson(json);

  @override
  @JsonKey()
  final String avatarUrl;

  @override
  String toString() {
    return 'SearchRepositoryItemOwnerModel(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoryItemOwnerModelImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoryItemOwnerModelImplCopyWith<
          _$SearchRepositoryItemOwnerModelImpl>
      get copyWith => __$$SearchRepositoryItemOwnerModelImplCopyWithImpl<
          _$SearchRepositoryItemOwnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRepositoryItemOwnerModelImplToJson(
      this,
    );
  }
}

abstract class _SearchRepositoryItemOwnerModel
    implements SearchRepositoryItemOwnerModel {
  const factory _SearchRepositoryItemOwnerModel({final String avatarUrl}) =
      _$SearchRepositoryItemOwnerModelImpl;

  factory _SearchRepositoryItemOwnerModel.fromJson(Map<String, dynamic> json) =
      _$SearchRepositoryItemOwnerModelImpl.fromJson;

  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$SearchRepositoryItemOwnerModelImplCopyWith<
          _$SearchRepositoryItemOwnerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
