import 'api_endpoints.dart';
import 'client.dart';
import 'models/download.dart';

/// Provides access to the Downloads resource.
class DownloadClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [DownloadClient].
  DownloadClient(this._client);

  /// Returns the list of downloadable filesets.
  Future<List<DownloadableFileset>> getDownloadableFilesets() async {
    var filesets = <DownloadableFileset>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(ApiEndpoints.downloadList,
          deserializer: DownloadableFilesetResult.fromJson, query: query);
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
  Future<DownloadableFilesetResult?> getDownloadableFilesetsPaginated(
      {required int page, int? limit}) async {
    return await _client.get(ApiEndpoints.downloadList,
        deserializer: DownloadableFilesetResult.fromJson,
        query: {'limit': limit, 'page': page});
  }

  /// Returns a list of download content.
  Future<DownloadContentResult?> getDownloadContent(
      String filesetId, String bookId,
      {int? chapter}) async {
    return await _client.get(
        ApiEndpoints.getDownload(filesetId, bookId, chapter: chapter),
        deserializer: DownloadContentResult.fromJson);
  }
}
