// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_search_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubSearchPageState {
  String get query => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  SearchRepositoriesModel get searchRepositoriesModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubSearchPageStateCopyWith<GithubSearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubSearchPageStateCopyWith<$Res> {
  factory $GithubSearchPageStateCopyWith(GithubSearchPageState value,
          $Res Function(GithubSearchPageState) then) =
      _$GithubSearchPageStateCopyWithImpl<$Res, GithubSearchPageState>;
  @useResult
  $Res call(
      {String query,
      int currentPage,
      SearchRepositoriesModel searchRepositoriesModel});

  $SearchRepositoriesModelCopyWith<$Res> get searchRepositoriesModel;
}

/// @nodoc
class _$GithubSearchPageStateCopyWithImpl<$Res,
        $Val extends GithubSearchPageState>
    implements $GithubSearchPageStateCopyWith<$Res> {
  _$GithubSearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? currentPage = null,
    Object? searchRepositoriesModel = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      searchRepositoriesModel: null == searchRepositoriesModel
          ? _value.searchRepositoriesModel
          : searchRepositoriesModel // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchRepositoriesModelCopyWith<$Res> get searchRepositoriesModel {
    return $SearchRepositoriesModelCopyWith<$Res>(
        _value.searchRepositoriesModel, (value) {
      return _then(_value.copyWith(searchRepositoriesModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubSearchPageStateImplCopyWith<$Res>
    implements $GithubSearchPageStateCopyWith<$Res> {
  factory _$$GithubSearchPageStateImplCopyWith(
          _$GithubSearchPageStateImpl value,
          $Res Function(_$GithubSearchPageStateImpl) then) =
      __$$GithubSearchPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      int currentPage,
      SearchRepositoriesModel searchRepositoriesModel});

  @override
  $SearchRepositoriesModelCopyWith<$Res> get searchRepositoriesModel;
}

/// @nodoc
class __$$GithubSearchPageStateImplCopyWithImpl<$Res>
    extends _$GithubSearchPageStateCopyWithImpl<$Res,
        _$GithubSearchPageStateImpl>
    implements _$$GithubSearchPageStateImplCopyWith<$Res> {
  __$$GithubSearchPageStateImplCopyWithImpl(_$GithubSearchPageStateImpl _value,
      $Res Function(_$GithubSearchPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? currentPage = null,
    Object? searchRepositoriesModel = null,
  }) {
    return _then(_$GithubSearchPageStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      searchRepositoriesModel: null == searchRepositoriesModel
          ? _value.searchRepositoriesModel
          : searchRepositoriesModel // ignore: cast_nullable_to_non_nullable
              as SearchRepositoriesModel,
    ));
  }
}

/// @nodoc

class _$GithubSearchPageStateImpl implements _GithubSearchPageState {
  const _$GithubSearchPageStateImpl(
      {this.query = '',
      this.currentPage = 1,
      this.searchRepositoriesModel = const SearchRepositoriesModel()});

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final SearchRepositoriesModel searchRepositoriesModel;

  @override
  String toString() {
    return 'GithubSearchPageState(query: $query, currentPage: $currentPage, searchRepositoriesModel: $searchRepositoriesModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubSearchPageStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(
                    other.searchRepositoriesModel, searchRepositoriesModel) ||
                other.searchRepositoriesModel == searchRepositoriesModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, currentPage, searchRepositoriesModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubSearchPageStateImplCopyWith<_$GithubSearchPageStateImpl>
      get copyWith => __$$GithubSearchPageStateImplCopyWithImpl<
          _$GithubSearchPageStateImpl>(this, _$identity);
}

abstract class _GithubSearchPageState implements GithubSearchPageState {
  const factory _GithubSearchPageState(
          {final String query,
          final int currentPage,
          final SearchRepositoriesModel searchRepositoriesModel}) =
      _$GithubSearchPageStateImpl;

  @override
  String get query;
  @override
  int get currentPage;
  @override
  SearchRepositoriesModel get searchRepositoriesModel;
  @override
  @JsonKey(ignore: true)
  _$$GithubSearchPageStateImplCopyWith<_$GithubSearchPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
