import '../model/github/search_repositories_model.dart';

abstract class SearchRepository {
  Future<SearchRepositoriesModel> repositories({
    required String query,
    int page,
  });
}