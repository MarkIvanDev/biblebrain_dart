import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';
import 'core.dart';

part 'bible.g.dart';

/// A bible.
@JsonSerializable()
class Bible {
  final String? abbr;
  final String? name;
  final String? vname;
  final String? language;
  final String? autonym;
  @JsonKey(name: 'language_id')
  final int? languageId;
  final String? iso;
  final String? date;
  @FilesetsConverter()
  final Filesets? filesets;

  const Bible(this.abbr, this.name, this.vname, this.language, this.autonym,
      this.languageId, this.iso, this.date, this.filesets);

  factory Bible.fromJson(Map<String, dynamic> json) => _$BibleFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleToJson(this);
}

/// Payload containing the data of a list of bibles.
@JsonSerializable()
class BiblesResult {
  final List<Bible>? data;
  final BiblesResultMetadata? meta;

  const BiblesResult(this.data, this.meta);

  factory BiblesResult.fromJson(Map<String, dynamic> json) =>
      _$BiblesResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BiblesResultToJson(this);
}

/// The metadata of [BiblesResult].
@JsonSerializable()
class BiblesResultMetadata {
  final BiblesResultMetadataPagination? pagination;

  const BiblesResultMetadata(this.pagination);

  factory BiblesResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$BiblesResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BiblesResultMetadataToJson(this);
}

/// The pagination data of [BiblesResultMetadata].
@JsonSerializable()
class BiblesResultMetadataPagination {
  final int? total;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @JsonKey(name: 'next_page_url')
  final String? next;
  @JsonKey(name: 'prev_page_url')
  final Object? previous;
  final int? from;
  final int? to;

  const BiblesResultMetadataPagination(
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.next,
      this.previous,
      this.from,
      this.to);

  factory BiblesResultMetadataPagination.fromJson(Map<String, dynamic> json) =>
      _$BiblesResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BiblesResultMetadataPaginationToJson(this);
}

/// Information of a bible.
@JsonSerializable()
class BibleInfo {
  final String? abbr;
  final BibleInfoAlphabet? alphabet;
  final String? mark;
  final String? name;
  final String? description;
  final String? vname;
  final String? vdescription;
  @BibleInfoPublishersConverter()
  final List<Organization>? publishers;
  final List<Organization>? providers;
  final List<BibleInfoEquivalent>? equivalents;
  final String? language;
  @JsonKey(name: 'language_id')
  final int? languageId;
  final String? iso;
  final String? date;
  final String? country;
  final List<BibleInfoBook>? books;
  final List<BibleInfoLink>? links;
  final Filesets? filesets;
  final BibleInfoFont? fonts;

  const BibleInfo(
      this.abbr,
      this.alphabet,
      this.mark,
      this.name,
      this.description,
      this.vname,
      this.vdescription,
      this.publishers,
      this.providers,
      this.equivalents,
      this.language,
      this.languageId,
      this.iso,
      this.date,
      this.country,
      this.books,
      this.links,
      this.filesets,
      this.fonts);

  factory BibleInfo.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoToJson(this);
}

/// An alphabet of a [BibleInfo].
@JsonSerializable()
class BibleInfoAlphabet {
  final String? script;
  final String? name;
  @AlphabetDirectionConverter()
  final AlphabetDirection? direction;
  final bool? unicode;
  @JsonKey(name: 'requires_font')
  final bool? requiresFont;

  const BibleInfoAlphabet(
      this.script, this.name, this.direction, this.unicode, this.requiresFont);

  factory BibleInfoAlphabet.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoAlphabetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoAlphabetToJson(this);
}

/// An equivalent of a [BibleInfo].
@JsonSerializable()
class BibleInfoEquivalent {
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  @JsonKey(name: 'equivalent_id')
  final String? equivalentId;
  @JsonKey(name: 'organization_id')
  final int? organizationId;
  final String? type;
  final String? site;
  final String? suffix;

  const BibleInfoEquivalent(this.bibleId, this.equivalentId,
      this.organizationId, this.type, this.site, this.suffix);

  factory BibleInfoEquivalent.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoEquivalentFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoEquivalentToJson(this);
}

/// A book of a [BibleInfo].
@JsonSerializable()
class BibleInfoBook {
  @JsonKey(name: 'book_id')
  final String? id;
  final String? name;
  @JsonKey(name: 'name_short')
  final String? shortName;
  final List<int>? chapters;
  @BookTestamentConverter()
  final BookTestament? testament;

  const BibleInfoBook(
      this.id, this.name, this.shortName, this.chapters, this.testament);

  factory BibleInfoBook.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoBookFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoBookToJson(this);
}

/// A link of a [BibleInfo].
@JsonSerializable()
class BibleInfoLink {
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  final String? type;
  final String? url;
  final String? title;
  final String? provider;
  @JsonKey(name: 'organization_id')
  final int? organizationId;

  const BibleInfoLink(this.bibleId, this.type, this.url, this.title,
      this.provider, this.organizationId);

  factory BibleInfoLink.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoLinkFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoLinkToJson(this);
}

/// A font of a [BibleInfo].
@JsonSerializable()
class BibleInfoFont {
  final String? name;
  final String? data;
  final String? type;

  const BibleInfoFont(this.name, this.data, this.type);

  factory BibleInfoFont.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoFontFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoFontToJson(this);
}

/// Payload containing the data of a bible.
@JsonSerializable()
class BibleInfoResult {
  final BibleInfo? data;

  const BibleInfoResult(this.data);

  factory BibleInfoResult.fromJson(Map<String, dynamic> json) =>
      _$BibleInfoResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleInfoResultToJson(this);
}

/// A book.
@JsonSerializable()
class Book {
  @JsonKey(name: 'book_id')
  final String? bookId;
  @JsonKey(name: 'book_id_usfx')
  final String? usfxId;
  @JsonKey(name: 'book_id_osis')
  final String? osisId;
  final String? name;
  @JsonKey(name: 'name_short')
  final String? shortName;
  @BookTestamentConverter()
  final BookTestament? testament;
  @JsonKey(name: 'testament_order')
  final int? testamentOrder;
  @JsonKey(name: 'book_order')
  final String? bookOrder;
  @JsonKey(name: 'book_group')
  final String? bookGroup;
  final List<int>? chapters;
  @JsonKey(name: 'content_types')
  final List<String>? contentTypes;

  const Book(
      this.bookId,
      this.usfxId,
      this.osisId,
      this.name,
      this.shortName,
      this.testament,
      this.testamentOrder,
      this.bookOrder,
      this.bookGroup,
      this.chapters,
      this.contentTypes);

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BookToJson(this);
}

/// Payload containing the data of a list of books.
@JsonSerializable()
class BooksResult {
  final List<Book>? data;

  const BooksResult(this.data);

  factory BooksResult.fromJson(Map<String, dynamic> json) =>
      _$BooksResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BooksResultToJson(this);
}

/// A copyright.
@JsonSerializable()
class Copyright {
  final String? id;
  @MediaTypeConverter()
  final MediaType? type;
  final String? size;
  final CopyrightInfo? copyright;

  const Copyright(this.id, this.type, this.size, this.copyright);

  factory Copyright.fromJson(Map<String, dynamic> json) =>
      _$CopyrightFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CopyrightToJson(this);
}

/// Information of a copyright.
@JsonSerializable()
class CopyrightInfo {
  @JsonKey(name: 'copyright_date')
  final String? date;
  final String? copyright;
  @JsonKey(name: 'copyright_description')
  final String? description;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'open_access')
  final int? openAccess;
  final List<Organization> organizations;

  const CopyrightInfo(this.date, this.copyright, this.description,
      this.createdAt, this.updatedAt, this.openAccess, this.organizations);

  factory CopyrightInfo.fromJson(Map<String, dynamic> json) =>
      _$CopyrightInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CopyrightInfoToJson(this);
}

/// A default bible.
@JsonSerializable()
class DefaultBible {
  final String? audio;
  final String? video;

  const DefaultBible(this.audio, this.video);

  factory DefaultBible.fromJson(Map<String, dynamic> json) =>
      _$DefaultBibleFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$DefaultBibleToJson(this);
}

/// A bible verse by language.
@JsonSerializable()
class VerseByLanguage {
  @JsonKey(name: 'verse_start')
  final int? verseStart;
  @JsonKey(name: 'verse_end')
  final int? verseEnd;
  final int? chapter;
  @JsonKey(name: 'book_id')
  final String? bookId;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  @JsonKey(name: 'verse_text')
  final String? verseText;
  @JsonKey(name: 'fileset_id')
  final String? filesetId;
  @JsonKey(name: 'fileset_set_type_code')
  final String? filesetSetTypeCode;
  @JsonKey(name: 'fileset_set_size_code')
  final String? filesetSetSizeCode;
  final List<VerseByLanguageBibleFileset>? bibleFilesets;

  const VerseByLanguage(
      this.verseStart,
      this.verseEnd,
      this.chapter,
      this.bookId,
      this.languageId,
      this.bibleId,
      this.verseText,
      this.filesetId,
      this.filesetSetTypeCode,
      this.filesetSetSizeCode,
      this.bibleFilesets);

  factory VerseByLanguage.fromJson(Map<String, dynamic> json) =>
      _$VerseByLanguageFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByLanguageToJson(this);
}

/// A bible fileset of [VerseByLanguage].
@JsonSerializable()
class VerseByLanguageBibleFileset {
  final String? id;
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @JsonKey(name: 'set_type_code')
  final String? setTypeCode;
  @JsonKey(name: 'set_size_code')
  final String? setSizeCode;

  const VerseByLanguageBibleFileset(
      this.id, this.assetId, this.setTypeCode, this.setSizeCode);

  factory VerseByLanguageBibleFileset.fromJson(Map<String, dynamic> json) =>
      _$VerseByLanguageBibleFilesetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByLanguageBibleFilesetToJson(this);
}

/// Payload containing the data of the list of bible verses by language.
@JsonSerializable()
class VerseByLanguageResult {
  final List<VerseByLanguage>? data;
  final VerseByLanguageResultMetadata? meta;

  const VerseByLanguageResult(this.data, this.meta);

  factory VerseByLanguageResult.fromJson(Map<String, dynamic> json) =>
      _$VerseByLanguageResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByLanguageResultToJson(this);
}

/// The metadata of [VerseByLanguageResult].
@JsonSerializable()
class VerseByLanguageResultMetadata {
  final VerseByLanguageResultMetadataPagination? pagination;

  const VerseByLanguageResultMetadata(this.pagination);

  factory VerseByLanguageResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$VerseByLanguageResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByLanguageResultMetadataToJson(this);
}

/// The pagination data of [VerseByLanguageResultMetadata].
@JsonSerializable()
class VerseByLanguageResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final VerseByLanguageResultMetadataPaginationLinks? links;

  const VerseByLanguageResultMetadataPagination(this.total, this.count,
      this.perPage, this.currentPage, this.totalPages, this.links);

  factory VerseByLanguageResultMetadataPagination.fromJson(
          Map<String, dynamic> json) =>
      _$VerseByLanguageResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$VerseByLanguageResultMetadataPaginationToJson(this);
}

/// The links data of [VerseByLanguageResultMetadataPagination].
@JsonSerializable()
class VerseByLanguageResultMetadataPaginationLinks {
  final String? previous;
  final String? next;

  const VerseByLanguageResultMetadataPaginationLinks(this.previous, this.next);

  factory VerseByLanguageResultMetadataPaginationLinks.fromJson(
          Map<String, dynamic> json) =>
      _$VerseByLanguageResultMetadataPaginationLinksFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$VerseByLanguageResultMetadataPaginationLinksToJson(this);
}

/// A bible verse by version.
@JsonSerializable()
class VerseByVersion {
  @JsonKey(name: 'verse_start')
  final int? verseStart;
  @JsonKey(name: 'verse_end')
  final int? verseEnd;
  final int? chapter;
  @JsonKey(name: 'book_id')
  final String? bookId;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  @JsonKey(name: 'verse_text')
  final String? verseText;
  @JsonKey(name: 'fileset_id')
  final String? filesetId;
  @JsonKey(name: 'fileset_set_type_code')
  final String? filesetSetTypeCode;
  @JsonKey(name: 'fileset_set_size_code')
  final String? filesetSetSizeCode;
  final List<VerseByVersionBibleFileset>? bibleFilesets;

  const VerseByVersion(
      this.verseStart,
      this.verseEnd,
      this.chapter,
      this.bookId,
      this.languageId,
      this.bibleId,
      this.verseText,
      this.filesetId,
      this.filesetSetTypeCode,
      this.filesetSetSizeCode,
      this.bibleFilesets);

  factory VerseByVersion.fromJson(Map<String, dynamic> json) =>
      _$VerseByVersionFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByVersionToJson(this);
}

/// A bible fileset of [VerseByVersion].
@JsonSerializable()
class VerseByVersionBibleFileset {
  final String? id;
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @JsonKey(name: 'set_type_code')
  final String? setTypeCode;
  @JsonKey(name: 'set_size_code')
  final String? setSizeCode;

  const VerseByVersionBibleFileset(
      this.id, this.assetId, this.setTypeCode, this.setSizeCode);

  factory VerseByVersionBibleFileset.fromJson(Map<String, dynamic> json) =>
      _$VerseByVersionBibleFilesetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByVersionBibleFilesetToJson(this);
}

/// Payload containing the data of the list of bible verses by version.
@JsonSerializable()
class VerseByVersionResult {
  final List<VerseByVersion>? data;
  final VerseByVersionResultMetadata? meta;

  const VerseByVersionResult(this.data, this.meta);

  factory VerseByVersionResult.fromJson(Map<String, dynamic> json) =>
      _$VerseByVersionResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByVersionResultToJson(this);
}

/// The metadata of [VerseByVersionResult].
@JsonSerializable()
class VerseByVersionResultMetadata {
  final VerseByVersionResultMetadataPagination? pagination;

  const VerseByVersionResultMetadata(this.pagination);

  factory VerseByVersionResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$VerseByVersionResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseByVersionResultMetadataToJson(this);
}

/// The pagination data of [VerseByVersionResultMetadata].
@JsonSerializable()
class VerseByVersionResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final VerseByVersionResultMetadataPaginationLinks? links;

  const VerseByVersionResultMetadataPagination(this.total, this.count,
      this.perPage, this.currentPage, this.totalPages, this.links);

  factory VerseByVersionResultMetadataPagination.fromJson(
          Map<String, dynamic> json) =>
      _$VerseByVersionResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$VerseByVersionResultMetadataPaginationToJson(this);
}

/// The links data of [VerseByVersionResultMetadataPagination].
@JsonSerializable()
class VerseByVersionResultMetadataPaginationLinks {
  final String? previous;
  final String? next;

  const VerseByVersionResultMetadataPaginationLinks(this.previous, this.next);

  factory VerseByVersionResultMetadataPaginationLinks.fromJson(
          Map<String, dynamic> json) =>
      _$VerseByVersionResultMetadataPaginationLinksFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$VerseByVersionResultMetadataPaginationLinksToJson(this);
}

/// A bible searched by version.
@JsonSerializable()
class BibleSearchByVersion {
  final String? abbr;
  final String? name;
  @JsonKey(name: 'language_id')
  final int? languageId;

  const BibleSearchByVersion(this.abbr, this.name, this.languageId);

  factory BibleSearchByVersion.fromJson(Map<String, dynamic> json) =>
      _$BibleSearchByVersionFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleSearchByVersionToJson(this);
}

/// Payload containing the data of the list of bibles searched by version.
@JsonSerializable()
class BibleSearchByVersionResult {
  final List<BibleSearchByVersion>? data;
  final BibleSearchByVersionResultMetadata? meta;

  const BibleSearchByVersionResult(this.data, this.meta);

  factory BibleSearchByVersionResult.fromJson(Map<String, dynamic> json) =>
      _$BibleSearchByVersionResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleSearchByVersionResultToJson(this);
}

/// The metadata of [BibleSearchByVersionResult].
@JsonSerializable()
class BibleSearchByVersionResultMetadata {
  final BibleSearchByVersionResultMetadataPagination? pagination;

  const BibleSearchByVersionResultMetadata(this.pagination);

  factory BibleSearchByVersionResultMetadata.fromJson(
          Map<String, dynamic> json) =>
      _$BibleSearchByVersionResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$BibleSearchByVersionResultMetadataToJson(this);
}

/// The pagination data of [BibleSearchByVersionResultMetadata].
@JsonSerializable()
class BibleSearchByVersionResultMetadataPagination {
  final int? total;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  final int? from;
  final int? to;

  const BibleSearchByVersionResultMetadataPagination(
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.nextPageUrl,
      this.prevPageUrl,
      this.from,
      this.to);

  factory BibleSearchByVersionResultMetadataPagination.fromJson(
          Map<String, dynamic> json) =>
      _$BibleSearchByVersionResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$BibleSearchByVersionResultMetadataPaginationToJson(this);
}

/// A bible in search result.
@JsonSerializable()
class BibleSearch {
  final String? abbr;
  final String? name;
  @JsonKey(name: 'language_id')
  final int? languageId;

  const BibleSearch(this.abbr, this.name, this.languageId);

  factory BibleSearch.fromJson(Map<String, dynamic> json) =>
      _$BibleSearchFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleSearchToJson(this);
}

/// Payload containing the data of the list of bibles in a search.
@JsonSerializable()
class BibleSearchResult {
  final List<BibleSearch>? data;
  final BibleSearchResultMetadata? meta;

  const BibleSearchResult(this.data, this.meta);

  factory BibleSearchResult.fromJson(Map<String, dynamic> json) =>
      _$BibleSearchResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleSearchResultToJson(this);
}

/// The metadata of [BibleSearchResult].
@JsonSerializable()
class BibleSearchResultMetadata {
  final BibleSearchResultMetadataPagination? pagination;

  const BibleSearchResultMetadata(this.pagination);

  factory BibleSearchResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$BibleSearchResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$BibleSearchResultMetadataToJson(this);
}

/// The pagination data of [BibleSearchResultMetadata].
@JsonSerializable()
class BibleSearchResultMetadataPagination {
  final int? total;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @JsonKey(name: 'prev_page_url')
  final String? prevPageUrl;
  final int? from;
  final int? to;

  const BibleSearchResultMetadataPagination(
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.nextPageUrl,
      this.prevPageUrl,
      this.from,
      this.to);

  factory BibleSearchResultMetadataPagination.fromJson(
          Map<String, dynamic> json) =>
      _$BibleSearchResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$BibleSearchResultMetadataPaginationToJson(this);
}

/// A verse info.
@JsonSerializable()
class VerseInfo {
  @JsonKey(name: 'book_id')
  final String? bookId;
  @JsonKey(name: 'book_name')
  final String? bookName;
  final int? chapter;
  @JsonKey(name: 'chapter_alt')
  final String? chapterAlt;
  @JsonKey(name: 'chapter_start')
  final int? chapterStart;
  @JsonKey(name: 'chapter_end')
  final int? chapterEnd;
  @JsonKey(name: 'verse_start')
  final int? verseStart;
  @JsonKey(name: 'verse_start_alt')
  final String? verseStartAlt;
  @JsonKey(name: 'verse_end')
  final int? verseEnd;
  @JsonKey(name: ' verse_end_alt')
  final String? verseEndAlt;
  @JsonKey(name: 'verse_text')
  final String? verseText;
  final String? path;
  final int? duration;
  final String? thumbnail;
  @JsonKey(name: 'filesize_in_bytes')
  final int? fileSizeInBytes;
  @JsonKey(name: 'youtube_url')
  final String? youtubeUrl;

  const VerseInfo(
      this.bookId,
      this.bookName,
      this.chapter,
      this.chapterAlt,
      this.chapterStart,
      this.chapterEnd,
      this.verseStart,
      this.verseStartAlt,
      this.verseEnd,
      this.verseEndAlt,
      this.verseText,
      this.path,
      this.duration,
      this.thumbnail,
      this.fileSizeInBytes,
      this.youtubeUrl);

  factory VerseInfo.fromJson(Map<String, dynamic> json) =>
      _$VerseInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseInfoToJson(this);
}

/// Payload containing the data of a list of [VerseInfo].
@JsonSerializable()
class VerseInfoResult {
  final List<VerseInfo>? data;

  const VerseInfoResult(this.data);

  factory VerseInfoResult.fromJson(Map<String, dynamic> json) =>
      _$VerseInfoResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseInfoResultToJson(this);
}
