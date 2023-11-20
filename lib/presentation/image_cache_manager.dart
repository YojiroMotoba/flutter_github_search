import 'package:flutter_cache_manager/flutter_cache_manager.dart';

final CacheManager imageCacheManager = _ImageCacheManager();

class _ImageCacheManager extends CacheManager {
  _ImageCacheManager()
      : super(
          Config(
            _cacheKey,
            stalePeriod: const Duration(minutes: 30),
            maxNrOfCacheObjects: 1000,
            repo: JsonCacheInfoRepository(databaseName: _cacheKey),
            fileService: HttpFileService(),
          ),
        );
  static const _cacheKey = 'ImageCacheKey';
}
