import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/github/search_repositories_model.dart';

part 'github_search_page_state.freezed.dart';

@freezed
abstract class GithubSearchPageState with _$GithubSearchPageState {
  const factory GithubSearchPageState({
    @Default('') String query,
    @Default(1) int currentPage,
    @Default(SearchRepositoriesModel())
    SearchRepositoriesModel searchRepositoriesModel,
  }) = _GithubSearchPageState;
}
