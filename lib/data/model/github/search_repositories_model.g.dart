// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repositories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRepositoriesModelImpl _$$SearchRepositoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRepositoriesModelImpl(
      totalCount: (json['total_count'] as num?)?.toInt() ?? 0,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SearchRepositoryItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SearchRepositoryItemModel>[],
    );

Map<String, dynamic> _$$SearchRepositoriesModelImplToJson(
        _$SearchRepositoriesModelImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
