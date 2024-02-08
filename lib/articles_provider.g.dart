// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articlesHash() => r'e43326ba483ea3aab1ec0d994f3101e159664b09';

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

/// See also [articles].
@ProviderFor(articles)
const articlesProvider = ArticlesFamily();

/// See also [articles].
class ArticlesFamily extends Family<AsyncValue<List<Article>>> {
  /// See also [articles].
  const ArticlesFamily();

  /// See also [articles].
  ArticlesProvider call({
    required String topic,
  }) {
    return ArticlesProvider(
      topic: topic,
    );
  }

  @override
  ArticlesProvider getProviderOverride(
    covariant ArticlesProvider provider,
  ) {
    return call(
      topic: provider.topic,
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
  String? get name => r'articlesProvider';
}

/// See also [articles].
class ArticlesProvider extends AutoDisposeFutureProvider<List<Article>> {
  /// See also [articles].
  ArticlesProvider({
    required String topic,
  }) : this._internal(
          (ref) => articles(
            ref as ArticlesRef,
            topic: topic,
          ),
          from: articlesProvider,
          name: r'articlesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articlesHash,
          dependencies: ArticlesFamily._dependencies,
          allTransitiveDependencies: ArticlesFamily._allTransitiveDependencies,
          topic: topic,
        );

  ArticlesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.topic,
  }) : super.internal();

  final String topic;

  @override
  Override overrideWith(
    FutureOr<List<Article>> Function(ArticlesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ArticlesProvider._internal(
        (ref) => create(ref as ArticlesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        topic: topic,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Article>> createElement() {
    return _ArticlesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticlesProvider && other.topic == topic;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, topic.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArticlesRef on AutoDisposeFutureProviderRef<List<Article>> {
  /// The parameter `topic` of this provider.
  String get topic;
}

class _ArticlesProviderElement
    extends AutoDisposeFutureProviderElement<List<Article>> with ArticlesRef {
  _ArticlesProviderElement(super.provider);

  @override
  String get topic => (origin as ArticlesProvider).topic;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
