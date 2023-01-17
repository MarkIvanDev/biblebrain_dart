import 'api_endpoints.dart';
import 'client.dart';
import 'models/timestamp.dart';

/// Provides access to the Timestamps resource.
class TimestampClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [TimestampClient].
  TimestampClient(this._client);

  /// Returns bible filesets which have audio timestamps.
  Future<List<FilesetId>> getFilesetsWithTimestamps() async {
    return await _client.getList(ApiEndpoints.timestamps,
        deserializer: (body) => body
            .map((e) => FilesetId.fromJson(e as Map<String, dynamic>))
            .toList());
  }

  /// Returns audio timestamps for a chapter.
  Future<TimestampsResult?> getTimestamps(
      String filesetId, String bookId, int chapter) async {
    return await _client.get(
        ApiEndpoints.getTimestamps(filesetId, bookId, chapter),
        deserializer: TimestampsResult.fromJson);
  }
}
