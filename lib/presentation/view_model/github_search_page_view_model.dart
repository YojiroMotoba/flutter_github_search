import 'package:flutter_github_search/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../state/github_search_page_state.dart';

part 'github_search_page_view_model.g.dart';

@riverpod
Future<void> fetchRepositories(
  FetchRepositoriesRef ref, {
  required String query,
  required int page,
}) async {
  final response = await ref.read(searchRepository).repositories(
        query: query,
        page: page,
      );
  final searchRepositoriesModel =
      ref.read(githubSearchPageState).searchRepositoriesModel;
  ref.watch(githubSearchPageState.notifier).state = GithubSearchPageState(
    query: query,
    currentPage: page + 1,
    searchRepositoriesModel: searchRepositoriesModel.copyWith(
      totalCount: response.totalCount,
      items: [...searchRepositoriesModel.items, ...response.items],
    ),
  );
}

final githubSearchPageState =
    StateProvider((ref) => const GithubSearchPageState());

