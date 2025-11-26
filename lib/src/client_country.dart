import 'api_endpoints.dart';
import 'client.dart';
import 'models/country.dart';

/// Provides access to the Countries resource.
class CountryClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [CountryClient].
  CountryClient(this._client);

  /// Returns the list of countries.
  Future<List<Country>> getCountries({
    String? l10n,
    bool? includeLanguages,
    BibleBrainClientOptions? options,
  }) async {
    var countries = <Country>[];
    var query = <String, Object?>{
      'l10n': l10n,
      'include_languages': includeLanguages,
    };

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.countries,
        deserializer: CountriesResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      countries.addAll(response.data ?? []);
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

    return countries;
  }

  /// Returns the paginated list of countries.
  Future<CountriesResult?> getCountriesPaginated({
    String? l10n,
    bool? includeLanguages,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.countries,
      deserializer: CountriesResult.fromJson,
      query: {
        'l10n': l10n,
        'include_languages': includeLanguages,
        'limit': limit,
        'page': page,
      },
      options: options,
    );
  }

  /// Returns the paginated list of countries in json.
  Future<String?> getCountriesPaginatedJson({
    String? l10n,
    bool? includeLanguages,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.countries,
      query: {
        'l10n': l10n,
        'include_languages': includeLanguages,
        'limit': limit,
        'page': page,
      },
      options: options,
    );
  }

  /// Returns the paginated list of countries from json.
  CountriesResult? getCountriesPaginatedFromJson({
    required String json,
    BibleBrainClientOptions? options,
  }) {
    return _client.deserialize(
      json: json,
      deserializer: CountriesResult.fromJson,
      options: options,
    );
  }

  /// Returns the request URI for getting the list of countries.
  static String getCountriesRequestUri({
    String? l10n,
    bool? includeLanguages,
    int page = 1,
    int? limit,
  }) {
    return ApiEndpoints.requestUri(
      path: ApiEndpoints.countries,
      query: {
        'l10n': l10n,
        'include_languages': includeLanguages,
        'limit': limit,
        'page': page,
      },
    );
  }

  /// Returns details for a single country.
  Future<CountryInfoResult?> getCountry({
    required String countryId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getCountry(countryId),
      deserializer: CountryInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns details for a single country in json.
  Future<String?> getCountryJson({
    required String countryId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getCountry(countryId),
      options: options,
    );
  }

  /// Returns details for a single country from json.
  CountryInfoResult? getCountryFromJson({
    required String json,
    BibleBrainClientOptions? options,
  }) {
    return _client.deserialize(
      json: json,
      deserializer: CountryInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns the request URI for getting details of a single country.
  static String getCountryRequestUri({required String countryId}) {
    return ApiEndpoints.requestUri(path: ApiEndpoints.getCountry(countryId));
  }

  /// Returns the list of countries that have [searchText] in its name.
  Future<List<CountrySearch>> searchCountries({
    required String searchText,
    BibleBrainClientOptions? options,
  }) async {
    var countries = <CountrySearch>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.getCountrySearch(searchText),
        deserializer: CountrySearchResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      countries.addAll(response.data ?? []);

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

    return countries;
  }

  /// Returns the paginated list of countries that have [searchText] in its name.
  Future<CountrySearchResult?> searchCountriesPaginated({
    required String searchText,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getCountrySearch(searchText),
      deserializer: CountrySearchResult.fromJson,
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the paginated list of countries that have [searchText] in its name in json.
  Future<String?> searchCountriesPaginatedJson({
    required String searchText,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getCountrySearch(searchText),
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the paginated list of countries that have [searchText] in its name from json.
  CountrySearchResult? searchCountriesPaginatedFromJson({
    required String json,
    BibleBrainClientOptions? options,
  }) {
    return _client.deserialize(
      json: json,
      deserializer: CountrySearchResult.fromJson,
      options: options,
    );
  }

  /// Returns the request URI for searching countries by name.
  static String searchCountriesPaginatedRequestUri({
    required String searchText,
    int page = 1,
    int? limit,
  }) {
    return ApiEndpoints.requestUri(
      path: ApiEndpoints.getCountrySearch(searchText),
      query: {'limit': limit, 'page': page},
    );
  }
}
