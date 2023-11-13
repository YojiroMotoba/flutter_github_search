import 'package:flutter_github_search/data/api/api_path.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/github/search_repositories_model.dart';
import '../../../repository/search_repository.dart';
import '../../github_api_dio.dart';

class SearchDao extends GithubApiDio implements SearchRepository {
  @override
  Future<SearchRepositoriesModel> repositories({
    required String query,
    int page = 1,
  }) async {
    final response = await get<Map<String, dynamic>>(
      ApiPath.searchRepositories,
      queryParameters: <String, dynamic>{
        'q': query,
        'page': page,
        'per_page': 100,
      },
    );
    return SearchRepositoriesModel.fromJson(response.data!);
  }
}
