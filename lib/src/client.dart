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
  final BibleBrainClientOptions _options;
  final http.Client _client;

  /// Creates a new instance of [BibleBrainClient].
  BibleBrainClient({required String apiKey, http.Client? client})
    : this.withOptions(
        options: BibleBrainClientOptions(apiKey: apiKey),
        client: client,
      );

  BibleBrainClient.withOptions({
    required BibleBrainClientOptions options,
    http.Client? client,
  }) : _options = options,
       _client = client ?? http.Client();

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
    required BibleBrainClientOptions? options,
  }) async {
    final json = await getJson(endpoint, query: query, options: options);
    if (json == null) {
      return null;
    }
    return deserialize(
      json: json,
      deserializer: deserializer,
      options: options,
    );
  }

  /// Executes an http GET request and decodes the json response to a list.
  Future<List<T>> getList<T>(
    String endpoint, {
    required List<T> Function(List<dynamic> body) deserializer,
    Map<String, Object?> query = const <String, Object?>{},
    required BibleBrainClientOptions? options,
  }) async {
    final json = await getJson(endpoint, query: query, options: options);
    if (json == null) {
      return <T>[];
    }
    return deserializeList(
      json: json,
      deserializer: deserializer,
      options: options,
    );
  }

  /// Executes an http GET request and decodes the json response to a map.
  Future<Map<K, V>?> getMap<K, V>(
    String endpoint, {
    required K Function(String key) keyDeserializer,
    required V Function(dynamic value) valueDeserializer,
    Map<String, Object?> query = const <String, Object?>{},
    required BibleBrainClientOptions? options,
  }) async {
    final json = await getJson(endpoint, query: query, options: options);
    if (json == null) {
      return null;
    }
    return deserializeMap(
      json: json,
      keyDeserializer: keyDeserializer,
      valueDeserializer: valueDeserializer,
      options: options,
    );
  }

  /// Executes an http GET request and returns the raw json response.
  Future<String?> getJson(
    String endpoint, {
    Map<String, Object?> query = const <String, Object?>{},
    required BibleBrainClientOptions? options,
  }) async {
    final opts = options ?? _options;
    try {
      final url = ApiEndpoints.baseUrl
          .resolve(endpoint)
          .replace(queryParameters: toQuery(query));
      final response = await _client.get(url, headers: opts.headers);
      return response.body;
    } catch (e) {
      if (opts.rethrowExceptions) {
        rethrow;
      }
      return null;
    }
  }

  /// Deserializes a json string to an object.
  T? deserialize<T>({
    required String json,
    required T Function(Map<String, dynamic> body) deserializer,
    required BibleBrainClientOptions? options,
  }) {
    final opts = options ?? _options;
    try {
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      return deserializer(decoded);
    } catch (e) {
      if (opts.rethrowExceptions) {
        rethrow;
      }
      return null;
    }
  }

  /// Deserializes a json string to a list.
  List<T> deserializeList<T>({
    required String json,
    required List<T> Function(List<dynamic> body) deserializer,
    required BibleBrainClientOptions? options,
  }) {
    final opts = options ?? _options;
    try {
      final decoded = jsonDecode(json) as List<dynamic>;
      return deserializer(decoded);
    } catch (e) {
      if (opts.rethrowExceptions) {
        rethrow;
      }
      return <T>[];
    }
  }

  /// Deserializes a json string to a map.
  Map<K, V>? deserializeMap<K, V>({
    required String json,
    required K Function(String key) keyDeserializer,
    required V Function(dynamic value) valueDeserializer,
    required BibleBrainClientOptions? options,
  }) {
    final opts = options ?? _options;
    try {
      final decoded = jsonDecode(json) as Map<String, dynamic>;
      return decoded.map(
        (key, value) =>
            MapEntry(keyDeserializer(key), valueDeserializer(value)),
      );
    } catch (e) {
      if (opts.rethrowExceptions) {
        rethrow;
      }
      return null;
    }
  }

  /// Closes this client and frees allocated resources.
  void close() {
    _client.close();
  }
}

class BibleBrainClientOptions {
  final String apiKey;
  final bool rethrowExceptions;

  BibleBrainClientOptions({this.apiKey = "", this.rethrowExceptions = false});

  Map<String, String> get headers => {"v": "4", "key": apiKey};
}
