import 'package:json_annotation/json_annotation.dart';

part 'download.g.dart';

/// A downloadable fileset.
@JsonSerializable()
class DownloadableFileset {
  final String? type;
  final String? language;
  final String? licensor;
  @JsonKey(name: 'fileset_id')
  final String? filesetId;

  const DownloadableFileset(
      this.type, this.language, this.licensor, this.filesetId);

  factory DownloadableFileset.fromJson(Map<String, dynamic> json) =>
      _$DownloadableFilesetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$DownloadableFilesetToJson(this);
}

/// A payload containing a list of [DownloadableFileset].
@JsonSerializable()
class DownloadableFilesetResult {
  final List<DownloadableFileset>? data;
  final DownloadableFilesetResultMetadata? meta;

  const DownloadableFilesetResult(this.data, this.meta);

  factory DownloadableFilesetResult.fromJson(Map<String, dynamic> json) =>
      _$DownloadableFilesetResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$DownloadableFilesetResultToJson(this);
}

/// The metadata of [DownloadableFilesetResult].
@JsonSerializable()
class DownloadableFilesetResultMetadata {
  final DownloadableFilesetResultMetadataPagination? pagination;

  const DownloadableFilesetResultMetadata(this.pagination);

  factory DownloadableFilesetResultMetadata.fromJson(
          Map<String, dynamic> json) =>
      _$DownloadableFilesetResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$DownloadableFilesetResultMetadataToJson(this);
}

/// The pagination data of [VerseByVersionResultMetadata].
@JsonSerializable()
class DownloadableFilesetResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final DownloadableFilesetResultMetadataPaginationLinks? links;

  const DownloadableFilesetResultMetadataPagination(this.total, this.count,
      this.perPage, this.currentPage, this.totalPages, this.links);

  factory DownloadableFilesetResultMetadataPagination.fromJson(
          Map<String, dynamic> json) =>
      _$DownloadableFilesetResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$DownloadableFilesetResultMetadataPaginationToJson(this);
}

/// The links data of [VerseByVersionResultMetadataPagination].
@JsonSerializable()
class DownloadableFilesetResultMetadataPaginationLinks {
  final String? previous;
  final String? next;

  const DownloadableFilesetResultMetadataPaginationLinks(
      this.previous, this.next);

  factory DownloadableFilesetResultMetadataPaginationLinks.fromJson(
          Map<String, dynamic> json) =>
      _$DownloadableFilesetResultMetadataPaginationLinksFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$DownloadableFilesetResultMetadataPaginationLinksToJson(this);
}

/// A download content.
@JsonSerializable()
class DownloadContent {
  @JsonKey(name: 'book_id')
  final String? bookId;
  @JsonKey(name: 'book_name')
  final String? bookName;
  @JsonKey(name: 'book_name_alt')
  final String? bookNameAlt;
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

  const DownloadContent(
      this.bookId,
      this.bookName,
      this.bookNameAlt,
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

  factory DownloadContent.fromJson(Map<String, dynamic> json) =>
      _$DownloadContentFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$DownloadContentToJson(this);
}

/// A payload containing a list of [DownloadContent].
@JsonSerializable()
class DownloadContentResult {
  final List<DownloadContent>? data;
  final DownloadContentResultMetadata? meta;

  const DownloadContentResult(this.data, this.meta);

  factory DownloadContentResult.fromJson(Map<String, dynamic> json) =>
      _$DownloadContentResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$DownloadContentResultToJson(this);
}

/// The metadata of [DownloadContentResult].
@JsonSerializable()
class DownloadContentResultMetadata {
  final String? thumbnail;
  @JsonKey(name: 'zip_file')
  final String? zipFile;
  final DownloadContentResultMetadataPagination? pagination;

  const DownloadContentResultMetadata(
      this.thumbnail, this.zipFile, this.pagination);

  factory DownloadContentResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$DownloadContentResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$DownloadContentResultMetadataToJson(this);
}

/// The pagination data of [DownloadContentResultMetadata]
@JsonSerializable()
class DownloadContentResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;

  const DownloadContentResultMetadataPagination(
      this.total, this.count, this.perPage, this.currentPage, this.totalPages);

  factory DownloadContentResultMetadataPagination.fromJson(
          Map<String, dynamic> json) =>
      _$DownloadContentResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$DownloadContentResultMetadataPaginationToJson(this);
}
