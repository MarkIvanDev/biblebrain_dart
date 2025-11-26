import 'api_endpoints.dart';
import 'client.dart';
import 'models/alphabet.dart';

/// Provides access to the Alphabets resource.
class AlphabetClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [AlphabetClient].
  AlphabetClient(this._client);

  /// Returns a list of the world's known scripts.
  Future<AlphabetsResult?> getAlphabets({
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.alphabets,
      deserializer: AlphabetsResult.fromJson,
      options: options,
    );
  }

  /// Returns a list of the world's known scripts in json.
  Future<String?> getAlphabetsJson({BibleBrainClientOptions? options}) async {
    return await _client.getJson(ApiEndpoints.alphabets, options: options);
  }

  /// Returns a list of the world's known scripts from json.
  AlphabetsResult? getAlphabetsFromJson({
    required String json,
    BibleBrainClientOptions? options,
  }) {
    return _client.deserialize(
      json: json,
      deserializer: AlphabetsResult.fromJson,
      options: options,
    );
  }

  /// Returns the request URI for getting the list of alphabets.
  static String getAlphabetsRequestUri() {
    return ApiEndpoints.requestUri(path: ApiEndpoints.alphabets);
  }

  /// Returns a single alphabet along with whatever bibles and languages using it.
  Future<AlphabetInfoResult?> getAlphabet({
    required String alphabetId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getAlphabet(alphabetId),
      deserializer: AlphabetInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns a single alphabet along with whatever bibles and languages using it in json.
  Future<String?> getAlphabetJson({
    required String alphabetId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getAlphabet(alphabetId),
      options: options,
    );
  }

  /// Returns a single alphabet along with whatever bibles and languages using it from json.
  AlphabetInfoResult? getAlphabetFromJson({
    required String json,
    BibleBrainClientOptions? options,
  }) {
    return _client.deserialize(
      json: json,
      deserializer: AlphabetInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns the request URI for getting a single alphabet.
  static String getAlphabetRequestUri(String alphabetId) {
    return ApiEndpoints.requestUri(path: ApiEndpoints.getAlphabet(alphabetId));
  }
}
