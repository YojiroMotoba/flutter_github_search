// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repository_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRepositoryItemModelImpl _$$SearchRepositoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRepositoryItemModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      fullName: json['full_name'] as String? ?? '',
      language: json['language'] as String? ?? '',
      stargazersCount: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      watchersCount: (json['watchers_count'] as num?)?.toInt() ?? 0,
      forksCount: (json['forks_count'] as num?)?.toInt() ?? 0,
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt() ?? 0,
      owner: json['owner'] == null
          ? const SearchRepositoryItemOwnerModel()
          : SearchRepositoryItemOwnerModel.fromJson(
              json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String? ?? '',
    );

Map<String, dynamic> _$$SearchRepositoryItemModelImplToJson(
        _$SearchRepositoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'language': instance.language,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'owner': instance.owner.toJson(),
      'html_url': instance.htmlUrl,
    };
