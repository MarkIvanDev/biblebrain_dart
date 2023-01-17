import 'api_endpoints.dart';
import 'client.dart';
import 'models/search.dart';

/// Provides access to the Search resource.
class SearchClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [SearchClient].
  SearchClient(this._client);

  /// Search a bible for a word.
  Future<List<SearchResult>> search(String query, String filesetId, {List<String>? books}) async {
    var searches = <SearchResult>[];
    var queryMap = <String, Object?>{
      'query': query,
      'fileset_id': filesetId,
      'limit': 1000,
      'page': 1,
      'books': books != null && books.isNotEmpty ? books.join(',') : null
    };

    SearchResult? response;
    int currentPage = 0;
    int totalPages = 0;
    int nextPage = 0;
    do {
      response = await _client.get(ApiEndpoints.search, deserializer: SearchResult.fromJson, query: queryMap);
      if (response == null) break;

      searches.add(response);
      if (response.verses?.meta?.pagination != null) {
        currentPage = response.verses!.meta!.pagination!.currentPage!;
        totalPages = response.verses!.meta!.pagination!.totalPages!;
        nextPage = currentPage + 1;
      } else {
        nextPage = 2;
      }
      queryMap['page'] = nextPage;
    } while (response.verses?.meta == null || currentPage < totalPages);

    return searches;
  }

  /// Returns a paginated list of search results.
  Future<SearchResult?> searchPaginated(String query, String filesetId,
      {List<String>? books, required int page, int? limit}) async {
    var queryMap = <String, Object?>{
      'query': query,
      'fileset_id': filesetId,
      'books': books != null && books.isNotEmpty ? books.join(',') : null,
      'limit': limit,
      'page': page
    };
    return await _client.get(ApiEndpoints.search, deserializer: SearchResult.fromJson, query: queryMap);
  }
}
