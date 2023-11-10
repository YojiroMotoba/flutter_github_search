import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class GithubApiDio extends DioMixin {
  GithubApiDio() {
    options = BaseOptions(
      baseUrl: 'https://api.github.com',
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        HttpHeaders.acceptHeader: 'application/vnd.github.v3+json',
      },
    );
    httpClientAdapter = IOHttpClientAdapter();
  }
}
