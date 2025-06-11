import 'dart:convert';
import 'package:http/http.dart' as http;

import 'api_endpoints.dart';
import 'client_alphabet.dart';
import 'client_bible.dart';
import 'client_country.dart';
import 'client_download.dart';
import 'client_language.dart';
import 'client_number.dart';
import 'client_search.dart';
import 'client_timestamp.dart';

export 'client_alphabet.dart';
export 'client_bible.dart';
export 'client_country.dart';
export 'client_download.dart';
export 'client_language.dart';
export 'client_number.dart';
export 'client_search.dart';
export 'client_timestamp.dart';

/// A client that provides access to the BibleBrain API.
class BibleBrainClient {
  final http.Client _client;
  final Map<String, String> _headers;
  final Uri _baseUrl = Uri.parse(ApiEndpoints.base);

  /// Creates a new instance of [BibleBrainClient].
  BibleBrainClient({required String apiKey, http.Client? client})
    : _client = client ?? http.Client(),
      _headers = {"v": "4", "key": apiKey};

  /// Provides access to the Alphabets resource.
  AlphabetClient get alphabet => AlphabetClient(this);

  /// Provides access to the Bibles resource.
  BibleClient get bible => BibleClient(this);

  /// Provides access to the Countries resource.
  CountryClient get country => CountryClient(this);

  /// Provides access to the Downloads resource.
  DownloadClient get download => DownloadClient(this);

  /// Provides access to the Languages resource.
  LanguageClient get language => LanguageClient(this);

  /// Provides access to the Numbers resource.
  NumberClient get number => NumberClient(this);

  /// Provides access to the Search resource.
  SearchClient get search => SearchClient(this);

  /// Provides access to the Timestamps resource.
  TimestampClient get timestamp => TimestampClient(this);

  /// Executes an http GET request and decodes the json response to an object.
  Future<T?> get<T>(
    String endpoint, {
    required T Function(Map<String, dynamic> body) deserializer,
    Map<String, Object?> query = const <String, Object?>{},
  }) async {
    try {
      final url = _baseUrl
          .resolve(endpoint)
          .replace(queryParameters: _toQuery(query));
      final response = await _client.get(url, headers: _headers);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return deserializer(json);
    } catch (e) {
      return null;
    }
  }

  /// Executes an http GET request and decodes the json response to a list.
  Future<List<T>> getList<T>(
    String endpoint, {
    required List<T> Function(List<dynamic> body) deserializer,
    Map<String, Object?> query = const <String, Object?>{},
  }) async {
    try {
      final url = _baseUrl
          .resolve(endpoint)
          .replace(queryParameters: _toQuery(query));
      final response = await _client.get(url, headers: _headers);
      final json = jsonDecode(response.body) as List<dynamic>;
      return deserializer(json);
    } catch (e) {
      return <T>[];
    }
  }

  /// Executes an http GET request and decodes the json response to a map.
  Future<Map<K, V>?> getMap<K, V>(
    String endpoint, {
    required K Function(String key) keyDeserializer,
    required V Function(dynamic value) valueDeserializer,
    Map<String, Object?> query = const <String, Object?>{},
  }) async {
    try {
      final url = _baseUrl
          .resolve(endpoint)
          .replace(queryParameters: _toQuery(query));
      final response = await _client.get(url, headers: _headers);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json.map(
        (key, value) =>
            MapEntry(keyDeserializer(key), valueDeserializer(value)),
      );
    } catch (e) {
      return null;
    }
  }

  /// Executes an http GET request and returns the raw json response.
  Future<String?> getJson(
    String endpoint, {
    Map<String, Object?> query = const <String, Object?>{},
  }) async {
    try {
      final url = _baseUrl
          .resolve(endpoint)
          .replace(queryParameters: _toQuery(query));
      final response = await _client.get(url, headers: _headers);
      return response.body;
    } catch (e) {
      return null;
    }
  }

  /// Closes this client and frees allocated resources.
  void close() {
    _client.close();
  }
}

Map<String, String> _toQuery(Map<String, Object?> params) {
  return (Map.of(params)..removeWhere(
    (key, value) => value == null,
  )).map((key, value) => MapEntry(key, value.toString()));
}
