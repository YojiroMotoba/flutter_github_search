// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repositories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchRepositoriesModel _$SearchRepositoriesModelFromJson(
    Map<String, dynamic> json) {
  return _SearchRepositoriesModel.fromJson(json);
}

/// @nodoc
mixin _$SearchRepositoriesModel {
  int get totalCount => throw _privateConstructorUsedError;
  List<SearchRepositoryItemModel> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepositoriesModelCopyWith<SearchRepositoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoriesModelCopyWith<$Res> {
  factory $SearchRepositoriesModelCopyWith(SearchRepositoriesModel value,
          $Res Function(SearchRepositoriesModel) then) =
      _$SearchRepositoriesModelCopyWithImpl<$Res, SearchRepositoriesModel>;
  @useResult
  $Res call({int totalCount, List<SearchRepositoryItemModel> items});
}

/// @nodoc
class _$SearchRepositoriesModelCopyWithImpl<$Res,
        $Val extends SearchRepositoriesModel>
    implements $SearchRepositoriesModelCopyWith<$Res> {
  _$SearchRepositoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchRepositoryItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRepositoriesModelImplCopyWith<$Res>
    implements $SearchRepositoriesModelCopyWith<$Res> {
  factory _$$SearchRepositoriesModelImplCopyWith(
          _$SearchRepositoriesModelImpl value,
          $Res Function(_$SearchRepositoriesModelImpl) then) =
      __$$SearchRepositoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount, List<SearchRepositoryItemModel> items});
}

/// @nodoc
class __$$SearchRepositoriesModelImplCopyWithImpl<$Res>
    extends _$SearchRepositoriesModelCopyWithImpl<$Res,
        _$SearchRepositoriesModelImpl>
    implements _$$SearchRepositoriesModelImplCopyWith<$Res> {
  __$$SearchRepositoriesModelImplCopyWithImpl(
      _$SearchRepositoriesModelImpl _value,
      $Res Function(_$SearchRepositoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? items = null,
  }) {
    return _then(_$SearchRepositoriesModelImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchRepositoryItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRepositoriesModelImpl implements _SearchRepositoriesModel {
  const _$SearchRepositoriesModelImpl(
      {this.totalCount = 0,
      final List<SearchRepositoryItemModel> items =
          const <SearchRepositoryItemModel>[]})
      : _items = items;

  factory _$SearchRepositoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRepositoriesModelImplFromJson(json);

  @override
  @JsonKey()
  final int totalCount;
  final List<SearchRepositoryItemModel> _items;
  @override
  @JsonKey()
  List<SearchRepositoryItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchRepositoriesModel(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRepositoriesModelImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalCount, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRepositoriesModelImplCopyWith<_$SearchRepositoriesModelImpl>
      get copyWith => __$$SearchRepositoriesModelImplCopyWithImpl<
          _$SearchRepositoriesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRepositoriesModelImplToJson(
      this,
    );
  }
}

abstract class _SearchRepositoriesModel implements SearchRepositoriesModel {
  const factory _SearchRepositoriesModel(
          {final int totalCount, final List<SearchRepositoryItemModel> items}) =
      _$SearchRepositoriesModelImpl;

  factory _SearchRepositoriesModel.fromJson(Map<String, dynamic> json) =
      _$SearchRepositoriesModelImpl.fromJson;

  @override
  int get totalCount;
  @override
  List<SearchRepositoryItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchRepositoriesModelImplCopyWith<_$SearchRepositoriesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
