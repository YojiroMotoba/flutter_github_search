import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_repository_item_owner_model.dart';

part 'search_repository_item_model.freezed.dart';
part 'search_repository_item_model.g.dart';

@freezed
abstract class SearchRepositoryItemModel with _$SearchRepositoryItemModel {
  const factory SearchRepositoryItemModel({
    @Default(0) int id,
    @Default('') String fullName,
    @Default('') String language,
    @Default(0) int stargazersCount,
    @Default(0) int watchersCount,
    @Default(0) int forksCount,
    @Default(0) int openIssuesCount,
    @Default(SearchRepositoryItemOwnerModel())
    SearchRepositoryItemOwnerModel owner,
    @Default('') String htmlUrl,
  }) = _SearchRepositoryItemModel;

  factory SearchRepositoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoryItemModelFromJson(json);
}
