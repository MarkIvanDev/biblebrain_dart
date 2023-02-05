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
  Future<List<Bible>> getBibles(
      {String? languageCode,
      String? assetId,
      MediaType? media,
      MediaType? mediaExclude,
      String? size,
      String? sizeExclude}) async {
    var bibles = <Bible>[];
    var query = <String, Object?>{
      'language_code': languageCode,
      'asset_id': assetId,
      'media': media?.name,
      'media_exclude': mediaExclude?.name,
      'size': size,
      'size_exclude': sizeExclude
    };

    int currentPage = 0;
    int lastPage = 0;
    do {
      final response = await _client.get(ApiEndpoints.bibles,
          deserializer: BiblesResult.fromJson, query: query);
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
  Future<BiblesResult?> getBiblesPaginated(
      {String? languageCode,
      String? assetId,
      MediaType? media,
      MediaType? mediaExclude,
      String? size,
      String? sizeExclude,
      required int page,
      int? limit}) async {
    return await _client
        .get(ApiEndpoints.bibles, deserializer: BiblesResult.fromJson, query: {
      'language_code': languageCode,
      'asset_id': assetId,
      'media': media?.name,
      'media_exclude': mediaExclude?.name,
      'size': size,
      'size_exclude': sizeExclude,
      'limit': limit,
      'page': page
    });
  }

  /// Returns detailed metadata for a single bible.
  Future<BibleInfoResult?> getBible(String bibleId) async {
    return await _client.get(ApiEndpoints.getBible(bibleId),
        deserializer: BibleInfoResult.fromJson);
  }

  /// Returns book information for a bible.
  Future<BooksResult?> getBooks(String bibleId) async {
    return await _client.get(ApiEndpoints.getBooks(bibleId),
        deserializer: BooksResult.fromJson);
  }

  /// Returns bible copyright information.
  Future<List<Copyright>> getCopyright(String bibleId) async {
    return await _client.getList(ApiEndpoints.getCopyright(bibleId),
        deserializer: (body) => body
            .map((e) => Copyright.fromJson(e as Map<String, dynamic>))
            .toList());
  }

  /// Returns content for a single fileset, book and chapter.
  Future<VersesResult?> getChapter(
      String filesetId, String bookId, int chapter) async {
    return await _client.get(
        ApiEndpoints.getChapter(filesetId, bookId, chapter),
        deserializer: VersesResult.fromJson);
  }

  /// Returns the default bibles for all languages.
  Future<Map<String, DefaultBible>?> getDefaultBibles() async {
    return await _client.getMap(ApiEndpoints.defaultBibles,
        keyDeserializer: (key) => key,
        valueDeserializer: (value) =>
            DefaultBible.fromJson(value as Map<String, dynamic>));
  }

  /// Returns the list of all the media types that exist within the filesets.
  Future<Map<MediaType?, String>?> getMediaTypes() async {
    return await _client.getMap(ApiEndpoints.mediaTypes,
        keyDeserializer: (key) => MediaTypeConverter().fromJson(key),
        valueDeserializer: (value) => value as String);
  }

  /// Returns the list of bible verses by language.
  Future<List<VerseByLanguage>> getVersesByLanguage(
      String languageCode, String bookId, int chapter,
      {int? verse}) async {
    var verses = <VerseByLanguage>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
          ApiEndpoints.getVersesByLanguage(languageCode, bookId, chapter,
              verse: verse),
          deserializer: VerseByLanguageResult.fromJson,
          query: query);
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
  Future<VerseByLanguageResult?> getVersesByLanguagePaginated(
      String languageCode, String bookId, int chapter,
      {int? verse, required int page, int? limit}) async {
    return await _client.get(
        ApiEndpoints.getVersesByLanguage(languageCode, bookId, chapter,
            verse: verse),
        deserializer: VerseByLanguageResult.fromJson,
        query: {'limit': limit, 'page': page});
  }

  /// Returns the list of bible verses by version.
  Future<List<VerseByVersion>> getVersesByVersion(
      String bibleId, String bookId, int chapter,
      {int? verse}) async {
    var verses = <VerseByVersion>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int totalPages = 0;
    do {
      final response = await _client.get(
          ApiEndpoints.getVersesByVersion(bibleId, bookId, chapter,
              verse: verse),
          deserializer: VerseByVersionResult.fromJson,
          query: query);
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
  Future<VerseByVersionResult?> getVersesByVersionPaginated(
      String bibleId, String bookId, int chapter,
      {int? verse, required int page, int? limit}) async {
    return await _client.get(
        ApiEndpoints.getVersesByVersion(bibleId, bookId, chapter, verse: verse),
        deserializer: VerseByVersionResult.fromJson,
        query: {'limit': limit, 'page': page});
  }

  /// Returns the list of bibles meeting the given [version].
  Future<List<BibleSearchByVersion>> searchBiblesByVersion(
      String version) async {
    var bibles = <BibleSearchByVersion>[];
    var query = <String, Object?>{'version': version};

    int currentPage = 0;
    int lastPage = 0;
    do {
      final response = await _client.get(ApiEndpoints.bibleSearch,
          deserializer: BibleSearchByVersionResult.fromJson, query: query);
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
  Future<BibleSearchByVersionResult?> searchBiblesByVersionPaginated(
      String version,
      {required int page,
      int? limit}) async {
    return await _client.get(ApiEndpoints.bibleSearch,
        deserializer: BibleSearchByVersionResult.fromJson,
        query: {'version': version, 'limit': limit, 'page': page});
  }

  /// Returns a paginated list of bibles that have [searchText] in its name.
  Future<List<BibleSearch>> searchBibles(String searchText) async {
    var bibles = <BibleSearch>[];
    var query = <String, Object?>{};

    int currentPage = 0;
    int lastPage = 0;
    do {
      final response = await _client.get(
          ApiEndpoints.getBibleSearch(searchText),
          deserializer: BibleSearchResult.fromJson,
          query: query);
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
  Future<BibleSearchResult?> searchBiblesPaginated(String searchText,
      {required int page, int? limit}) async {
    return await _client.get(ApiEndpoints.getBibleSearch(searchText),
        deserializer: BibleSearchResult.fromJson,
        query: {'limit': limit, 'page': page});
  }

  /// Returns the list of [VerseInfo] of a chapter.
  Future<VerseInfoResult?> getVerseInfo(String filesetId, String bookId,
      {int? chapter}) async {
    return await _client.get(
        ApiEndpoints.getVerseInfo(filesetId, bookId, chapter: chapter),
        deserializer: VerseInfoResult.fromJson);
  }
}
