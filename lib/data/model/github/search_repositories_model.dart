import 'package:freezed_annotation/freezed_annotation.dart';

import 'search_repository_item_model.dart';

part 'search_repositories_model.freezed.dart';
part 'search_repositories_model.g.dart';

@freezed
abstract class SearchRepositoriesModel with _$SearchRepositoriesModel {
  const factory SearchRepositoriesModel({
    @Default(0) int totalCount,
    @Default(<SearchRepositoryItemModel>[])
    List<SearchRepositoryItemModel> items,
  }) = _SearchRepositoriesModel;

  factory SearchRepositoriesModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoriesModelFromJson(json);
}
