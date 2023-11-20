import 'package:flutter_github_search/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../state/github_search_page_state.dart';

part 'github_search_page_view_model.g.dart';

final githubSearchPageState =
    StateProvider<GithubSearchPageState>((_) => throw UnimplementedError());

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
  if (page == 1) {
    ref.invalidate(githubSearchPageState);
  }
  final searchRepositoriesModel =
      ref.read(githubSearchPageState).searchRepositoriesModel;
  ref.read(githubSearchPageState.notifier).state = GithubSearchPageState(
    query: query,
    currentPage: page,
    searchRepositoriesModel: searchRepositoriesModel.copyWith(
      totalCount: response.totalCount,
      items: [...searchRepositoriesModel.items, ...response.items],
    ),
  );
}
