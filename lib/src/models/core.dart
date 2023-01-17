import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';

part 'core.g.dart';

/// The direction of an alphabet.
enum AlphabetDirection { unknown, ltr, rtl }

/// The versification of a bible.
enum BibleVersification {
  protestant,
  luther,
  synodal,
  german,
  kjva,
  vulgate,
  lxx,
  orthodox,
  nrsva,
  catholic,
  finnish,
  messianic,
}

/// The media type.
enum MediaType {
  textPlain('text_plain'),
  textFormat('text_format'),
  textUsx('text_usx'),
  textHtml('text_html'),
  textJson('text_json'),
  audio('audio'),
  audioDrama('audio_drama'),
  audioStream('audio_stream'),
  audioDramaStream('audio_drama_stream'),
  videoStream('video_stream');

  final String name;
  const MediaType(this.name);
}

/// The testament of a book.
enum BookTestament { ot, nt, ap }

/// A verse.
@JsonSerializable()
class Verse {
  @JsonKey(name: 'fileset_id')
  final String? filesetId;
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
  @JsonKey(name: 'verse_end_alt')
  final String? verseEndAlt;
  @JsonKey(name: 'verse_text')
  final String? verseText;
  final String? path;
  final String? thumbnail;
  final int? duration;
  final String? bitrate;
  final String? container;
  @JsonKey(name: 'multiple_mp3')
  final bool? multipleMp3;

  const Verse(
      this.filesetId,
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
      this.thumbnail,
      this.duration,
      this.bitrate,
      this.container,
      this.multipleMp3);

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VerseToJson(this);
}

/// Payload containing the data of a list of verses.
@JsonSerializable()
class VersesResult {
  final List<Verse>? data;
  final VersesResultMetadata? meta;

  const VersesResult(this.data, this.meta);

  factory VersesResult.fromJson(Map<String, dynamic> json) =>
      _$VersesResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VersesResultToJson(this);
}

/// The metadata of [VersesResult].
@JsonSerializable()
class VersesResultMetadata {
  final VersesResultMetadataPagination? pagination;

  const VersesResultMetadata(this.pagination);

  factory VersesResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$VersesResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VersesResultMetadataToJson(this);
}

/// The pagination data of [VersesResultMetadata].
@JsonSerializable()
class VersesResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @VersesResultMetadataPaginationLinksConverter()
  final VersesResultMetadataPaginationLinks? links;

  const VersesResultMetadataPagination(this.total, this.count, this.perPage,
      this.currentPage, this.totalPages, this.links);

  factory VersesResultMetadataPagination.fromJson(Map<String, dynamic> json) =>
      _$VersesResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$VersesResultMetadataPaginationToJson(this);
}

/// The links data of [VersesResultMetadataPagination].
@JsonSerializable()
class VersesResultMetadataPaginationLinks {
  final String? previous;
  final String? next;

  const VersesResultMetadataPaginationLinks(this.previous, this.next);

  factory VersesResultMetadataPaginationLinks.fromJson(
          Map<String, dynamic> json) =>
      _$VersesResultMetadataPaginationLinksFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() =>
      _$VersesResultMetadataPaginationLinksToJson(this);
}

/// Filesets data.
@JsonSerializable()
class Filesets {
  @JsonKey(name: 'dbp-prod')
  final List<Fileset>? prod;
  @JsonKey(name: 'dbp-vid')
  final List<Fileset>? vid;

  const Filesets(this.prod, this.vid);

  factory Filesets.fromJson(Map<String, dynamic> json) =>
      _$FilesetsFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$FilesetsToJson(this);
}

/// A fileset.
@JsonSerializable()
class Fileset {
  final String? id;
  final String? type;
  final String? size;
  @JsonKey(name: 'stock_no')
  final String? stockNo;
  final String? volume;

  const Fileset(this.id, this.type, this.size, this.stockNo, this.volume);

  factory Fileset.fromJson(Map<String, dynamic> json) =>
      _$FilesetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$FilesetToJson(this);
}

/// An organization.
@JsonSerializable()
class Organization {
  final int? id;
  final String? slug;
  final String? abbreviation;
  final String? primaryColor;
  final String? secondaryColor;
  final int? inactive;
  @JsonKey(name: 'url_facebook')
  final String? facebook;
  @JsonKey(name: 'url_website')
  final String? website;
  @JsonKey(name: 'url_donate')
  final String? donate;
  @JsonKey(name: 'url_twitter')
  final String? twitter;
  final String? address;
  final String? address2;
  final String? city;
  final String? state;
  final String? country;
  final int? zip;
  final String? phone;
  final String? email;
  @JsonKey(name: 'email_director')
  final String? emailDirector;
  final double? latitude;
  final double? longitude;
  @JsonKey(name: 'laravel_through_key')
  final String? laravelThroughKey;
  final OrganizationPivot? pivot;
  @JsonKey(name: 'logo_icon')
  final OrganizationLogoIcon? logo;
  final List<OrganizationLogoIcon>? logos;
  final List<OrganizationTranslation>? translations;

  const Organization(
      this.id,
      this.slug,
      this.abbreviation,
      this.primaryColor,
      this.secondaryColor,
      this.inactive,
      this.facebook,
      this.website,
      this.donate,
      this.twitter,
      this.address,
      this.address2,
      this.city,
      this.state,
      this.country,
      this.zip,
      this.phone,
      this.email,
      this.emailDirector,
      this.latitude,
      this.longitude,
      this.laravelThroughKey,
      this.pivot,
      this.logo,
      this.logos,
      this.translations);

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}

/// A pivot of an [Organization].
@JsonSerializable()
class OrganizationPivot {
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  @JsonKey(name: 'organization_id')
  final int? organizationId;
  @JsonKey(name: 'relationship_type')
  final String? relationshipType;

  const OrganizationPivot(
      this.bibleId, this.organizationId, this.relationshipType);

  factory OrganizationPivot.fromJson(Map<String, dynamic> json) =>
      _$OrganizationPivotFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$OrganizationPivotToJson(this);
}

/// A logo of an [Organization].
@JsonSerializable()
class OrganizationLogoIcon {
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'language_iso')
  final String? languageIso;
  final String? url;
  final int? icon;

  const OrganizationLogoIcon(
      this.languageId, this.languageIso, this.url, this.icon);

  factory OrganizationLogoIcon.fromJson(Map<String, dynamic> json) =>
      _$OrganizationLogoIconFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$OrganizationLogoIconToJson(this);
}

/// A translation of an [Organization].
@JsonSerializable()
class OrganizationTranslation {
  @JsonKey(name: 'language_id')
  final int? languageId;
  final int? vernacular;
  final int? alt;
  final String? name;
  @JsonKey(name: 'description_short')
  final String? descriptionShort;

  OrganizationTranslation(this.languageId, this.vernacular, this.alt, this.name,
      this.descriptionShort);

  factory OrganizationTranslation.fromJson(Map<String, dynamic> json) =>
      _$OrganizationTranslationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$OrganizationTranslationToJson(this);
}
