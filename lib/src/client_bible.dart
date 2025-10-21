import 'api_endpoints.dart';
import 'client.dart';
import 'models/bible.dart';
import 'models/converters.dart';
import 'models/core.dart';

/// Provides access to the Bibles resource.
class BibleClient {
  final BibleBrainClient _client;

  /// Creates a new instance of [BibleClient].
  BibleClient(this._client);

  /// Returns bibles based on filter criteria.
  Future<List<Bible>> getBibles({
    String? languageCode,
    String? assetId,
    MediaType? media,
    MediaType? mediaExclude,
    String? size,
    String? sizeExclude,
    BibleBrainClientOptions? options,
  }) async {
    var bibles = <Bible>[];
    var query = <String, Object?>{
      'language_code': languageCode,
      'asset_id': assetId,
      'media': media?.name,
      'media_exclude': mediaExclude?.name,
      'size': size,
      'size_exclude': sizeExclude,
    };

    int currentPage = 0;
    int lastPage = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.bibles,
        deserializer: BiblesResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      bibles.addAll(response.data ?? []);

      final cp = response.meta?.pagination?.currentPage;
      final lp = response.meta?.pagination?.lastPage;
      if (cp != null && lp != null) {
        currentPage = cp;
        lastPage = lp;
        query['page'] = currentPage + 1;
      } else {
        break;
      }
    } while (currentPage < lastPage);

    return bibles;
  }

  /// Returns a paginated list of bibles based on filter criteria.
  Future<BiblesResult?> getBiblesPaginated({
    String? languageCode,
    String? assetId,
    MediaType? media,
    MediaType? mediaExclude,
    String? size,
    String? sizeExclude,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.bibles,
      deserializer: BiblesResult.fromJson,
      query: {
        'language_code': languageCode,
        'asset_id': assetId,
        'media': media?.name,
        'media_exclude': mediaExclude?.name,
        'size': size,
        'size_exclude': sizeExclude,
        'limit': limit,
        'page': page,
      },
      options: options,
    );
  }

  /// Returns a paginated list of bibles based on filter criteria in json.
  Future<String?> getBiblesPaginatedJson({
    String? languageCode,
    String? assetId,
    MediaType? media,
    MediaType? mediaExclude,
    String? size,
    String? sizeExclude,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.bibles,
      query: {
        'language_code': languageCode,
        'asset_id': assetId,
        'media': media?.name,
        'media_exclude': mediaExclude?.name,
        'size': size,
        'size_exclude': sizeExclude,
        'limit': limit,
        'page': page,
      },
      options: options,
    );
  }

  /// Returns detailed metadata for a single bible.
  Future<BibleInfoResult?> getBible({
    required String bibleId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getBible(bibleId),
      deserializer: BibleInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns detailed metadata for a single bible in json.
  Future<String?> getBibleJson({
    required String bibleId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getBible(bibleId),
      options: options,
    );
  }

  /// Returns book information for a bible.
  Future<BooksResult?> getBooks({
    required String bibleId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getBooks(bibleId),
      deserializer: BooksResult.fromJson,
      options: options,
    );
  }

  /// Returns book information for a bible in json.
  Future<String?> getBooksJson({
    required String bibleId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getBooks(bibleId),
      options: options,
    );
  }

  /// Returns bible copyright information.
  Future<List<Copyright>> getCopyright({
    required String bibleId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getList(
      ApiEndpoints.getCopyright(bibleId),
      deserializer: (body) => body
          .map((e) => Copyright.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: options,
    );
  }

  /// Returns bible copyright information in json.
  Future<String?> getCopyrightJson({
    required String bibleId,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getCopyright(bibleId),
      options: options,
    );
  }

  /// Returns content for a single fileset, book and chapter.
  Future<VersesResult?> getChapter({
    required String filesetId,
    required String bookId,
    required int chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getChapter(filesetId, bookId, chapter),
      deserializer: VersesResult.fromJson,
      options: options,
    );
  }

  /// Returns content for a single fileset, book and chapter in json.
  Future<String?> getChapterJson({
    required String filesetId,
    required String bookId,
    required int chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getChapter(filesetId, bookId, chapter),
      options: options,
    );
  }

  /// Returns the default bibles for all languages.
  Future<Map<String, DefaultBible>?> getDefaultBibles({
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getMap(
      ApiEndpoints.defaultBibles,
      keyDeserializer: (key) => key,
      valueDeserializer: (value) =>
          DefaultBible.fromJson(value as Map<String, dynamic>),
      options: options,
    );
  }

  /// Returns the default bibles for all languages in json.
  Future<String?> getDefaultBiblesJson({
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(ApiEndpoints.defaultBibles, options: options);
  }

  /// Returns the list of all the media types that exist within the filesets.
  Future<Map<MediaType?, String>?> getMediaTypes({
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getMap(
      ApiEndpoints.mediaTypes,
      keyDeserializer: (key) => MediaTypeConverter().fromJson(key),
      valueDeserializer: (value) => value as String,
      options: options,
    );
  }

  /// Returns the list of all the media types that exist within the filesets in json.
  Future<String?> getMediaTypesJson({BibleBrainClientOptions? options}) async {
    return await _client.getJson(ApiEndpoints.mediaTypes, options: options);
  }

  /// Returns the list of bible verses by language.
  Future<List<VerseByLanguage>> getVersesByLanguage({
    required String languageCode,
    required String bookId,
    required int chapter,
    int? verse,
    BibleBrainClientOptions? options,
  }) async {
    var verses = <VerseByLanguage>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.getVersesByLanguage(
          languageCode,
          bookId,
          chapter,
          verse: verse,
        ),
        deserializer: VerseByLanguageResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      verses.addAll(response.data ?? []);

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

    return verses;
  }

  /// Returns a paginated list of bible verses by language.
  Future<VerseByLanguageResult?> getVersesByLanguagePaginated({
    required String languageCode,
    required String bookId,
    required int chapter,
    int? verse,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getVersesByLanguage(
        languageCode,
        bookId,
        chapter,
        verse: verse,
      ),
      deserializer: VerseByLanguageResult.fromJson,
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns a paginated list of bible verses by language in json.
  Future<String?> getVersesByLanguagePaginatedJson({
    required String languageCode,
    required String bookId,
    required int chapter,
    int? verse,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getVersesByLanguage(
        languageCode,
        bookId,
        chapter,
        verse: verse,
      ),
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the list of bible verses by version.
  Future<List<VerseByVersion>> getVersesByVersion({
    required String bibleId,
    required String bookId,
    required int chapter,
    int? verse,
    BibleBrainClientOptions? options,
  }) async {
    var verses = <VerseByVersion>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.getVersesByVersion(bibleId, bookId, chapter, verse: verse),
        deserializer: VerseByVersionResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      verses.addAll(response.data ?? []);

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

    return verses;
  }

  /// Returns a paginated list of bible verses by version.
  Future<VerseByVersionResult?> getVersesByVersionPaginated({
    required String bibleId,
    required String bookId,
    required int chapter,
    int? verse,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getVersesByVersion(bibleId, bookId, chapter, verse: verse),
      deserializer: VerseByVersionResult.fromJson,
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns a paginated list of bible verses by version in json.
  Future<String?> getVersesByVersionPaginatedJson({
    required String bibleId,
    required String bookId,
    required int chapter,
    int? verse,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getVersesByVersion(bibleId, bookId, chapter, verse: verse),
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the list of bibles meeting the given [version].
  Future<List<BibleSearchByVersion>> searchBiblesByVersion({
    required String version,
    BibleBrainClientOptions? options,
  }) async {
    var bibles = <BibleSearchByVersion>[];
    var query = <String, Object?>{'version': version};

    int currentPage = 0;
    int lastPage = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.bibleSearch,
        deserializer: BibleSearchByVersionResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      bibles.addAll(response.data ?? []);

      final cp = response.meta?.pagination?.currentPage;
      final lp = response.meta?.pagination?.lastPage;
      if (cp != null && lp != null) {
        currentPage = cp;
        lastPage = lp;
        query['page'] = currentPage + 1;
      } else {
        break;
      }
    } while (currentPage < lastPage);

    return bibles;
  }

  /// Returns a paginated list of bibles meeting the given [version].
  Future<BibleSearchByVersionResult?> searchBiblesByVersionPaginated({
    required String version,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.bibleSearch,
      deserializer: BibleSearchByVersionResult.fromJson,
      query: {'version': version, 'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns a paginated list of bibles meeting the given [version] in json.
  Future<String?> searchBiblesByVersionPaginatedJson({
    required String version,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.bibleSearch,
      query: {'version': version, 'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the list of bibles that have [searchText] in its name.
  Future<List<BibleSearch>> searchBibles({
    required String searchText,
    BibleBrainClientOptions? options,
  }) async {
    var bibles = <BibleSearch>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int lastPage = 0;
    do {
      final response = await _client.get(
        ApiEndpoints.getBibleSearch(searchText),
        deserializer: BibleSearchResult.fromJson,
        query: query,
        options: options,
      );
      if (response == null) break;

      bibles.addAll(response.data ?? []);

      final cp = response.meta?.pagination?.currentPage;
      final lp = response.meta?.pagination?.lastPage;
      if (cp != null && lp != null) {
        currentPage = cp;
        lastPage = lp;
        query['page'] = currentPage + 1;
      } else {
        break;
      }
    } while (currentPage < lastPage);

    return bibles;
  }

  /// Returns a paginated list of bibles that have [searchText] in its name.
  Future<BibleSearchResult?> searchBiblesPaginated({
    required String searchText,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getBibleSearch(searchText),
      deserializer: BibleSearchResult.fromJson,
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns a paginated list of bibles that have [searchText] in its name in json.
  Future<String?> searchBiblesPaginatedJson({
    required String searchText,
    int page = 1,
    int? limit,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getBibleSearch(searchText),
      query: {'limit': limit, 'page': page},
      options: options,
    );
  }

  /// Returns the list of [VerseInfo] of a chapter.
  Future<VerseInfoResult?> getVerseInfo({
    required String filesetId,
    required String bookId,
    int? chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.get(
      ApiEndpoints.getVerseInfo(filesetId, bookId, chapter: chapter),
      deserializer: VerseInfoResult.fromJson,
      options: options,
    );
  }

  /// Returns the list of [VerseInfo] of a chapter in json.
  Future<String?> getVerseInfoJson({
    required String filesetId,
    required String bookId,
    int? chapter,
    BibleBrainClientOptions? options,
  }) async {
    return await _client.getJson(
      ApiEndpoints.getVerseInfo(filesetId, bookId, chapter: chapter),
      options: options,
    );
  }
}
