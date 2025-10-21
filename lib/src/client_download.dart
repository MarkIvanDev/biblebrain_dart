import 'api_endpoints.dart';
import 'client.dart';
import 'models/download.dart';

/// Provides access to the Downloads resource.
class DownloadClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [DownloadClient].
  DownloadClient(this._client);

  /// Returns the list of downloadable filesets.
  Future<List<DownloadableFileset>> getDownloadableFilesets({
    BibleBrainClientOptions? options,
  }) async {
    var filesets = <DownloadableFileset>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.downloadList,
        deserializer: DownloadableFilesetResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      filesets.addAll(response.data ?? []);

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

    return filesets;
  }

  /// Returns a paginated list of downloadable filesets.
  Future<DownloadableFilesetResult?> getDownloadableFilesetsPaginated({
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.downloadList,
      deserializer: DownloadableFilesetResult.fromJson,
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns a paginated list of downloadable filesets in json.
  Future<String?> getDownloadableFilesetsPaginatedJson({
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.downloadList,
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns a list of download content.
  Future<DownloadContentResult?> getDownloadContent({
    required String filesetId,
    required String bookId,
    int? chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getDownload(filesetId, bookId, chapter: chapter),
      deserializer: DownloadContentResult.fromJson,
      options: options,
    );
  }

  /// Returns a list of download content in json.
  Future<String?> getDownloadContentJson({
    required String filesetId,
    required String bookId,
    int? chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getDownload(filesetId, bookId, chapter: chapter),
      options: options,
    );
  }
}
