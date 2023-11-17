// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_search_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchRepositoriesHash() => r'41e29c97f5328b9f68bf9e409cda17a7cebe9cbd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchRepositories].
@ProviderFor(fetchRepositories)
const fetchRepositoriesProvider = FetchRepositoriesFamily();

/// See also [fetchRepositories].
class FetchRepositoriesFamily extends Family<AsyncValue<void>> {
  /// See also [fetchRepositories].
  const FetchRepositoriesFamily();

  /// See also [fetchRepositories].
  FetchRepositoriesProvider call({
    required Key key,
    required String query,
    required int page,
  }) {
    return FetchRepositoriesProvider(
      key: key,
      query: query,
      page: page,
    );
  }

  @override
  FetchRepositoriesProvider getProviderOverride(
    covariant FetchRepositoriesProvider provider,
  ) {
    return call(
      key: provider.key,
      query: provider.query,
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchRepositoriesProvider';
}

/// See also [fetchRepositories].
class FetchRepositoriesProvider extends AutoDisposeFutureProvider<void> {
  /// See also [fetchRepositories].
  FetchRepositoriesProvider({
    required Key key,
    required String query,
    required int page,
  }) : this._internal(
          (ref) => fetchRepositories(
            ref as FetchRepositoriesRef,
            key: key,
            query: query,
            page: page,
          ),
          from: fetchRepositoriesProvider,
          name: r'fetchRepositoriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchRepositoriesHash,
          dependencies: FetchRepositoriesFamily._dependencies,
          allTransitiveDependencies:
              FetchRepositoriesFamily._allTransitiveDependencies,
          key: key,
          query: query,
          page: page,
        );

  FetchRepositoriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.query,
    required this.page,
  }) : super.internal();

  final Key key;
  final String query;
  final int page;

  @override
  Override overrideWith(
    FutureOr<void> Function(FetchRepositoriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchRepositoriesProvider._internal(
        (ref) => create(ref as FetchRepositoriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        query: query,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _FetchRepositoriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchRepositoriesProvider &&
        other.key == key &&
        other.query == query &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchRepositoriesRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `key` of this provider.
  Key get key;

  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchRepositoriesProviderElement
    extends AutoDisposeFutureProviderElement<void> with FetchRepositoriesRef {
  _FetchRepositoriesProviderElement(super.provider);

  @override
  Key get key => (origin as FetchRepositoriesProvider).key;
  @override
  String get query => (origin as FetchRepositoriesProvider).query;
  @override
  int get page => (origin as FetchRepositoriesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
