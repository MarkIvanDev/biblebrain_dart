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
    required int page,
    int? limit,
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
    );
  }

  /// Returns the paginated list of countries in json.
  Future<String?> getCountriesPaginatedJson({
    String? l10n,
    bool? includeLanguages,
    required int page,
    int? limit,
  }) async {
    return await _client.getJson(
      ApiEndpoints.countries,
      query: {
        'l10n': l10n,
        'include_languages': includeLanguages,
        'limit': limit,
        'page': page,
      },
    );
  }

  /// Returns details for a single country.
  Future<CountryInfoResult?> getCountry(String countryId) async {
    return await _client.get(
      ApiEndpoints.getCountry(countryId),
      deserializer: CountryInfoResult.fromJson,
    );
  }

  /// Returns details for a single country in json.
  Future<String?> getCountryJson(String countryId) async {
    return await _client.getJson(ApiEndpoints.getCountry(countryId));
  }

  /// Returns the list of countries that have [searchText] in its name.
  Future<List<CountrySearch>> searchCountries(String searchText) async {
    var countries = <CountrySearch>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.getCountrySearch(searchText),
        deserializer: CountrySearchResult.fromJson,
        query: query,
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
  Future<CountrySearchResult?> searchCountriesPaginated(
    String searchText, {
    required int page,
    int? limit,
  }) async {
    return await _client.get(
      ApiEndpoints.getCountrySearch(searchText),
      deserializer: CountrySearchResult.fromJson,
      query: {'limit': limit, 'page': page},
    );
  }

  /// Returns the paginated list of countries that have [searchText] in its name in json.
  Future<String?> searchCountriesPaginatedJson(
    String searchText, {
    required int page,
    int? limit,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getCountrySearch(searchText),
      query: {'limit': limit, 'page': page},
    );
  }
}
