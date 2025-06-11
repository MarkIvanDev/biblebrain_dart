import 'api_endpoints.dart';
import 'client.dart';
import 'models/alphabet.dart';

/// Provides access to the Alphabets resource.
class AlphabetClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [AlphabetClient].
  AlphabetClient(this._client);

  /// Returns a list of the world's known scripts.
  Future<AlphabetsResult?> getAlphabets() async {
    return await _client.get(
      ApiEndpoints.alphabets,
      deserializer: AlphabetsResult.fromJson,
    );
  }

  /// Returns a list of the world's known scripts in json.
  Future<String?> getAlphabetsJson() async {
    return await _client.getJson(ApiEndpoints.alphabets);
  }

  /// Returns a single alphabet along with whatever bibles and languages using it.
  Future<AlphabetInfoResult?> getAlphabet(String alphabetId) async {
    return await _client.get(
      ApiEndpoints.getAlphabet(alphabetId),
      deserializer: AlphabetInfoResult.fromJson,
    );
  }

  /// Returns a single alphabet along with whatever bibles and languages using it in json.
  Future<String?> getAlphabetJson(String alphabetId) async {
    return await _client.getJson(ApiEndpoints.getAlphabet(alphabetId));
  }
}
