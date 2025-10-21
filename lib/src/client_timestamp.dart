import 'api_endpoints.dart';
import 'client.dart';
import 'models/timestamp.dart';

/// Provides access to the Timestamps resource.
class TimestampClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [TimestampClient].
  TimestampClient(this._client);

  /// Returns bible filesets which have audio timestamps.
  Future<List<FilesetId>> getFilesetsWithTimestamps({
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getList(
      ApiEndpoints.timestamps,
      deserializer: (body) => body
          .map((e) => FilesetId.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: options,
    );
  }

  /// Returns bible filesets which have audio timestamps in json.
  Future<String?> getFilesetsWithTimestampsJson({
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(ApiEndpoints.timestamps, options: options);
  }

  /// Returns audio timestamps for a chapter.
  Future<TimestampsResult?> getTimestamps({
    required String filesetId,
    required String bookId,
    required int chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getTimestamps(filesetId, bookId, chapter),
      deserializer: TimestampsResult.fromJson,
      options: options,
    );
  }

  /// Returns audio timestamps for a chapter in json.
  Future<String?> getTimestampsJson({
    required String filesetId,
    required String bookId,
    required int chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getTimestamps(filesetId, bookId, chapter),
      options: options,
    );
  }
}
