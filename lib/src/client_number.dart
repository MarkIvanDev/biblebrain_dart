import 'api_endpoints.dart';
import 'client.dart';
import 'models/number.dart';

/// Provides access to the Numbers resource.
class NumberClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [NumberClient].
  NumberClient(this._client);

  /// Return all alphabets that have custom number sets.
  Future<NumbersResult?> getNumbers() async {
    return await _client.get(
      ApiEndpoints.numbers,
      deserializer: NumbersResult.fromJson,
    );
  }

  /// Return all alphabets that have custom number sets in json.
  Future<String?> getNumbersJson() async {
    return await _client.getJson(ApiEndpoints.numbers);
  }

  /// Return a single custom number set.
  Future<NumberInfoResult?> getNumber(String numeralSystem) async {
    return await _client.get(
      ApiEndpoints.getNumber(numeralSystem),
      deserializer: NumberInfoResult.fromJson,
    );
  }

  /// Return a single custom number set in json.
  Future<String?> getNumberJson(String numeralSystem) async {
    return await _client.getJson(ApiEndpoints.getNumber(numeralSystem));
  }
}
