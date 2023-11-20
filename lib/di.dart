import 'package:flutter_github_search/data/api/dao/github/search_dao.dart';
import 'package:flutter_github_search/data/repository/search_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchRepository =
    Provider<SearchRepository>((_) => throw UnimplementedError());

final overrides = [
  searchRepository.overrideWith(
    (ref) => ref.watch(Provider((ref) => SearchDao())),
  ),
];
