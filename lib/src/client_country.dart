import 'api_endpoints.dart';
import 'client.dart';
import 'models/country.dart';

/// Provides access to the Countries resource.
class CountryClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [CountryClient].
  CountryClient(this._client);

  /// Returns the list of countries.
  Future<List<Country>> getCountries({String? l10n, bool? includeLanguages}) async {
    var countries = <Country>[];
    var query = <String, Object?>{'l10n': l10n, 'include_languages': includeLanguages};

    CountriesResult? response;
    int currentPage = 0;
    int totalPages = 0;
    do {
      response = await _client.get(ApiEndpoints.countries, deserializer: CountriesResult.fromJson, query: query);
      if (response == null || response.data == null) break;

      countries.addAll(response.data!);
      if (response.meta?.pagination != null) {
        currentPage = response.meta!.pagination!.currentPage!;
        totalPages = response.meta!.pagination!.totalPages!;
      }
      query['page'] = currentPage + 1;
    } while (currentPage < totalPages);

    return countries;
  }

  /// Returns the paginated list of countries.
  Future<CountriesResult?> getCountriesPaginated(
      {String? l10n, bool? includeLanguages, required int page, int? limit}) async {
    return await _client.get(ApiEndpoints.countries,
        deserializer: CountriesResult.fromJson,
        query: {'l10n': l10n, 'include_languages': includeLanguages, 'limit': limit, 'page': page});
  }

  /// Returns details for a single country.
  Future<CountryInfoResult?> getCountry(String countryId) async {
    return await _client.get(ApiEndpoints.getCountry(countryId), deserializer: CountryInfoResult.fromJson);
  }

  /// Returns the list of countries that have [searchText] in its name.
  Future<List<CountrySearch>> searchCountries(String searchText) async {
    var countries = <CountrySearch>[];
    var query = <String, Object?>{};

    CountrySearchResult? response;
    int currentPage = 0;
    int totalPages = 0;
    do {
      response = await _client.get(ApiEndpoints.getCountrySearch(searchText),
          deserializer: CountrySearchResult.fromJson, query: query);
      if (response == null || response.data == null) break;

      countries.addAll(response.data!);
      if (response.meta?.pagination != null) {
        currentPage = response.meta!.pagination!.currentPage!;
        totalPages = response.meta!.pagination!.totalPages!;
      }
      query['page'] = currentPage + 1;
    } while (currentPage < totalPages);

    return countries;
  }

  /// Returns the paginated list of countries that have [searchText] in its name.
  Future<CountrySearchResult?> searchCountriesPaginated(String searchText, {required int page, int? limit}) async {
    return await _client.get(ApiEndpoints.getCountrySearch(searchText),
        deserializer: CountrySearchResult.fromJson, query: {'limit': limit, 'page': page});
  }
}
