import 'api_endpoints.dart';
import 'client.dart';
import 'models/language.dart';

/// Provides access to the Languages resource.
class LanguageClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [LanguageClient].
  LanguageClient(this._client);

  /// Returns the list of languages.
  Future<List<Language>> getLanguages(
      {String? country, String? languageCode, String? languageName, bool? includeTranslations}) async {
    var languages = <Language>[];
    var query = <String, Object?>{
      'country': country,
      'language_code': languageCode,
      'language_name': languageName,
      'include_translations': includeTranslations
    };

    LanguagesResult? response;
    int currentPage = 0;
    int totalPages = 0;
    do {
      response = await _client.get(ApiEndpoints.languages, deserializer: LanguagesResult.fromJson, query: query);
      if (response == null || response.data == null) break;

      languages.addAll(response.data!);
      if (response.meta?.pagination != null) {
        currentPage = response.meta!.pagination!.currentPage!;
        totalPages = response.meta!.pagination!.totalPages!;
      }
      query['page'] = currentPage + 1;
    } while (currentPage < totalPages);

    return languages;
  }

  /// Returns the paginated list of languages.
  Future<LanguagesResult?> getLanguagesPaginated(
      {String? country,
      String? languageCode,
      String? languageName,
      bool? includeTranslations,
      required int page,
      int? limit}) async {
    return await _client.get(ApiEndpoints.languages, deserializer: LanguagesResult.fromJson, query: {
      'country': country,
      'language_code': languageCode,
      'language_name': languageName,
      'include_translations': includeTranslations,
      'limit': limit,
      'page': page
    });
  }

  /// Returns details for a single language.
  Future<LanguageInfoResult?> getLanguage(int languageId) async {
    return await _client.get(ApiEndpoints.getLanguage(languageId), deserializer: LanguageInfoResult.fromJson);
  }

  /// Returns the list of languages that have [searchText] in its name or country.
  Future<List<LanguageSearch>> searchLanguages(String searchText) async {
    var languages = <LanguageSearch>[];
    var query = <String, Object?>{};

    LanguageSearchResult? response;
    int currentPage = 0;
    int totalPages = 0;
    do {
      response =
          await _client.get(ApiEndpoints.getLanguageSearch(searchText), deserializer: LanguageSearchResult.fromJson);
      if (response == null || response.data == null) break;

      languages.addAll(response.data!);
      if (response.meta?.pagination != null) {
        currentPage = response.meta!.pagination!.currentPage!;
        totalPages = response.meta!.pagination!.totalPages!;
      }
      query['page'] = currentPage + 1;
    } while (currentPage < totalPages);

    return languages;
  }

  /// Returns the paginated list of languages that have [searchText] in its name or country.
  Future<LanguageSearchResult?> searchLanguagesPaginated(String searchText, {required int page, int? limit}) async {
    return await _client.get(ApiEndpoints.getLanguageSearch(searchText),
        deserializer: LanguageSearchResult.fromJson, query: <String, Object?>{'limit': limit, 'page': page});
  }
}
