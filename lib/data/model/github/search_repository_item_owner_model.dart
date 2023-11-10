import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repository_item_owner_model.freezed.dart';
part 'search_repository_item_owner_model.g.dart';

@freezed
abstract class SearchRepositoryItemOwnerModel
    with _$SearchRepositoryItemOwnerModel {
  const factory SearchRepositoryItemOwnerModel({
    @Default('') String avatarUrl,
  }) = _SearchRepositoryItemOwnerModel;

  factory SearchRepositoryItemOwnerModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoryItemOwnerModelFromJson(json);
}
