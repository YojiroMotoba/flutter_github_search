import 'package:flutter_github_search/di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/github/search_repositories_model.dart';

part 'async_github_search_page_view_model.g.dart';

@riverpod
class AsyncGithubSearchPageViewModel extends _$AsyncGithubSearchPageViewModel {
  int _page = 1;
  String _query = '';

  @override
  FutureOr<SearchRepositoriesModel> build() async {
    return const SearchRepositoriesModel();
  }

  Future<void> firstLoading(String query) async {
    _page = 1;
    _query = query;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        return await ref.read(searchRepository).repositories(
              query: query,
              page: _page,
            );
      },
    );
  }

  Future<void> additionalLoading() async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async {
        return await ref.read(searchRepository).repositories(
              query: _query,
              page: _page + 1,
            );
      },
    );
    _page++;
  }

  bool isFirstLoading() => state.isLoading && state.value?.totalCount == 0;
  bool isAdditionalLoading() =>
      state.isLoading && (state.value?.totalCount ?? 0) >= 0;
}
