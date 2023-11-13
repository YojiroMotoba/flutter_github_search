import 'package:flutter_github_search/di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/github/search_repositories_model.dart';

part 'async_github_search_page_view_model.g.dart';

@riverpod
class AsyncGithubSearchPageViewModel extends _$AsyncGithubSearchPageViewModel {
  @override
  FutureOr<SearchRepositoriesModel> build() async {
    return const SearchRepositoriesModel();
  }

  Future<void> search(String query) async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await ref.read(searchRepository).repositories(query: query);
    });
  }
}
