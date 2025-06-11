import 'api_endpoints.dart';
import 'client.dart';
import 'models/search.dart';

/// Provides access to the Search resource.
class SearchClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [SearchClient].
  SearchClient(this._client);

  /// Search a bible for a word.
  Future<List<SearchResult>> search(
    String query,
    String filesetId, {
    List<String>? books,
  }) async {
    var searches = <SearchResult>[];
    var queryMap = <String, Object?>{
      'query': query,
      'fileset_id': filesetId,
      'limit': 1000,
      'page': 1,
      'books': books != null && books.isNotEmpty ? books.join(',') : null,
    };

    int currentPage = 0;
    int totalPages = 0;
    bool isMetaNull = false;
    do {
      final response = await _client.get(
        ApiEndpoints.search,
        deserializer: SearchResult.fromJson,
        query: queryMap,
      );
      if (response == null) break;

      searches.add(response);

      final meta = response.verses?.meta;
      if (meta != null) {
        isMetaNull = false;
        final cp = meta.pagination?.currentPage;
        final tp = meta.pagination?.totalPages;
        if (cp != null && tp != null) {
          currentPage = cp;
          totalPages = tp;
          queryMap['page'] = currentPage + 1;
        } else {
          break;
        }
      } else {
        isMetaNull = true;
        queryMap['page'] = 2;
      }
    } while (isMetaNull || currentPage < totalPages);

    return searches;
  }

  /// Returns a paginated list of search results.
  Future<SearchResult?> searchPaginated(
    String query,
    String filesetId, {
    List<String>? books,
    required int page,
    int? limit,
  }) async {
    var queryMap = <String, Object?>{
      'query': query,
      'fileset_id': filesetId,
      'books': books != null && books.isNotEmpty ? books.join(',') : null,
      'limit': limit,
      'page': page,
    };
    return await _client.get(
      ApiEndpoints.search,
      deserializer: SearchResult.fromJson,
      query: queryMap,
    );
  }

  /// Returns a paginated list of search results in json.
  Future<String?> searchPaginatedJson(
    String query,
    String filesetId, {
    List<String>? books,
    required int page,
    int? limit,
  }) async {
    var queryMap = <String, Object?>{
      'query': query,
      'fileset_id': filesetId,
      'books': books != null && books.isNotEmpty ? books.join(',') : null,
      'limit': limit,
      'page': page,
    };
    return await _client.getJson(ApiEndpoints.search, query: queryMap);
  }
}
