import 'api_endpoints.dart';
import 'client.dart';
import 'models/language.dart';

/// Provides access to the Languages resource.
class LanguageClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [LanguageClient].
  LanguageClient(this._client);

  /// Returns the list of languages.
  Future<List<Language>> getLanguages({
    String? country,
    String? languageCode,
    String? languageName,
    bool? includeTranslations,
    BibleBrainClientOptions? options,
  }) async {
    var languages = <Language>[];
    var query = <String, Object?>{
      'country': country,
      'language_code': languageCode,
      'language_name': languageName,
      'include_translations': includeTranslations,
    };

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.languages,
        deserializer: LanguagesResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      languages.addAll(response.data ?? []);

      final cp = response.meta?.pagination?.currentPage;
      final tp = response.meta?.pagination?.totalPages;
      if (cp != null && tp != null) {
        currentPage = cp;
        totalPages = tp;
        query['page'] = currentPage + 1;
      } else {
        break;
      }
    } while (currentPage < totalPages);

    return languages;
  }

  /// Returns the paginated list of languages.
  Future<LanguagesResult?> getLanguagesPaginated({
    String? country,
    String? languageCode,
    String? languageName,
    bool? includeTranslations,
    required int page,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.languages,
      deserializer: LanguagesResult.fromJson,
      query: {
        'country': country,
        'language_code': languageCode,
        'language_name': languageName,
        'include_translations': includeTranslations,
        'limit': limit,
        'page': page,
      },
      options: options,
    );
  }

  /// Returns the paginated list of languages in json.
  Future<String?> getLanguagesPaginatedJson({
    String? country,
    String? languageCode,
    String? languageName,
    bool? includeTranslations,
    required int page,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.languages,
      query: {
        'country': country,
        'language_code': languageCode,
        'language_name': languageName,
        'include_translations': includeTranslations,
        'limit': limit,
        'page': page,
      },
      options: options,
    );
  }

  /// Returns details for a single language.
  Future<LanguageInfoResult?> getLanguage({
    required int languageId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getLanguage(languageId),
      deserializer: LanguageInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns details for a single language in json.
  Future<String?> getLanguageJson({
    required int languageId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getLanguage(languageId),
      options: options,
    );
  }

  /// Returns the list of languages that have [searchText] in its name or country.
  Future<List<LanguageSearch>> searchLanguages({
    required String searchText,
    BibleBrainClientOptions? options,
  }) async {
    var languages = <LanguageSearch>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.getLanguageSearch(searchText),
        deserializer: LanguageSearchResult.fromJson,
        options: options,
      );
      if (response == null) break;

      languages.addAll(response.data ?? []);
      final cp = response.meta?.pagination?.currentPage;
      final tp = response.meta?.pagination?.totalPages;
      if (cp != null && tp != null) {
        currentPage = cp;
        totalPages = tp;
        query['page'] = currentPage + 1;
      } else {
        break;
      }
    } while (currentPage < totalPages);

    return languages;
  }

  /// Returns the paginated list of languages that have [searchText] in its name or country.
  Future<LanguageSearchResult?> searchLanguagesPaginated({
    required String searchText,
    required int page,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getLanguageSearch(searchText),
      deserializer: LanguageSearchResult.fromJson,
      query: <String, Object?>{'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the paginated list of languages that have [searchText] in its name or country in json.
  Future<String?> searchLanguagesPaginatedJson({
    required String searchText,
    required int page,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getLanguageSearch(searchText),
      query: <String, Object?>{'limit': limit, 'page': page},
      options: options,
    );
  }
}
