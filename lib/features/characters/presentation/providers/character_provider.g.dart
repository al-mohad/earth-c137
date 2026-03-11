// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchQuery)
final searchQueryProvider = SearchQueryProvider._();

final class SearchQueryProvider extends $NotifierProvider<SearchQuery, String> {
  SearchQueryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchQueryHash();

  @$internal
  @override
  SearchQuery create() => SearchQuery();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$searchQueryHash() => r'32848c18dd36b350439a45fa6338bf2df6758978';

abstract class _$SearchQuery extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(characters)
final charactersProvider = CharactersProvider._();

final class CharactersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Character>>,
          List<Character>,
          FutureOr<List<Character>>
        >
    with $FutureModifier<List<Character>>, $FutureProvider<List<Character>> {
  CharactersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'charactersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$charactersHash();

  @$internal
  @override
  $FutureProviderElement<List<Character>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Character>> create(Ref ref) {
    return characters(ref);
  }
}

String _$charactersHash() => r'd015335872261121a686c0dceb633bbc3caa0829';
