import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';
import 'core.dart';

part 'language.g.dart';

/// A language.
@JsonSerializable()
class Language {
  final int? id;
  @JsonKey(name: 'glotto_id')
  final String? glottoId;
  final String? iso;
  final String? name;
  final String? autonym;
  final int? bibles;
  final int? filesets;

  const Language(this.id, this.glottoId, this.iso, this.name, this.autonym, this.bibles, this.filesets);

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

/// Payload containing the data of a list of languages.
@JsonSerializable()
class LanguagesResult {
  final List<Language>? data;
  final LanguagesResultMetadata? meta;

  const LanguagesResult(this.data, this.meta);

  factory LanguagesResult.fromJson(Map<String, dynamic> json) => _$LanguagesResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguagesResultToJson(this);
}

/// The metadata of [LanguagesResult].
@JsonSerializable()
class LanguagesResultMetadata {
  final LanguagesResultMetadataPagination? pagination;

  const LanguagesResultMetadata(this.pagination);

  factory LanguagesResultMetadata.fromJson(Map<String, dynamic> json) => _$LanguagesResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguagesResultMetadataToJson(this);
}

/// The pagination data of [LanguagesResultMetadata].
@JsonSerializable()
class LanguagesResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final LanguagesResultMetadataPaginationLinks? links;

  const LanguagesResultMetadataPagination(
      this.total, this.count, this.perPage, this.currentPage, this.totalPages, this.links);

  factory LanguagesResultMetadataPagination.fromJson(Map<String, dynamic> json) =>
      _$LanguagesResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguagesResultMetadataPaginationToJson(this);
}

/// The links data of [LanguagesResultMetadataPagination].
@JsonSerializable()
class LanguagesResultMetadataPaginationLinks {
  final String? previous;
  final String? next;

  const LanguagesResultMetadataPaginationLinks(this.previous, this.next);

  factory LanguagesResultMetadataPaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$LanguagesResultMetadataPaginationLinksFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguagesResultMetadataPaginationLinksToJson(this);
}

/// Information of a language.
@JsonSerializable()
class LanguageInfo {
  final int? id;
  final String? name;
  final String? description;
  final String? autonym;
  @JsonKey(name: 'glotto_id')
  final String? glottoId;
  final String? iso;
  final String? maps;
  final String? area;
  final int? population;
  @JsonKey(name: 'country_id')
  final String? countryId;
  @JsonKey(name: 'country_name')
  final String? countryName;
  final Object? alternativeNames;
  @StringMapOrEmptyArrayConverter()
  final Map<String, String>? classifications;
  final List<LanguageInfoBible>? bibles;
  final List<LanguageInfoResource>? resources;

  const LanguageInfo(
      this.id,
      this.name,
      this.description,
      this.autonym,
      this.glottoId,
      this.iso,
      this.maps,
      this.area,
      this.population,
      this.countryId,
      this.countryName,
      this.alternativeNames,
      this.classifications,
      this.bibles,
      this.resources);

  factory LanguageInfo.fromJson(Map<String, dynamic> json) => _$LanguageInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoToJson(this);
}

/// A bible of a [LanguageInfo].
@JsonSerializable()
class LanguageInfoBible {
  final String id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @BibleVersificationConverter()
  final BibleVersification? versification;
  @JsonKey(name: 'numeral_system_id')
  final String? numeralSystemId;
  final String? scope;
  final String? script;
  final String? derived;
  final String? copyright;
  final int? reviewed;
  final List<LanguageInfoBibleTranslation>? translations;
  final List<LanguageInfoBibleFileset>? filesets;

  const LanguageInfoBible(this.id, this.languageId, this.versification, this.numeralSystemId, this.scope, this.script,
      this.derived, this.copyright, this.reviewed, this.translations, this.filesets);

  factory LanguageInfoBible.fromJson(Map<String, dynamic> json) => _$LanguageInfoBibleFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoBibleToJson(this);
}

/// A translation of a [LanguageInfoBible].
@JsonSerializable()
class LanguageInfoBibleTranslation {
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  final int? vernacular;
  @JsonKey(name: 'vernacular_trade')
  final int? vernacularTrade;
  final String? name;
  final String? description;

  const LanguageInfoBibleTranslation(
      this.languageId, this.bibleId, this.vernacular, this.vernacularTrade, this.name, this.description);

  factory LanguageInfoBibleTranslation.fromJson(Map<String, dynamic> json) =>
      _$LanguageInfoBibleTranslationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoBibleTranslationToJson(this);
}

/// A fileset of a [LanguageInfoBible].
@JsonSerializable()
class LanguageInfoBibleFileset {
  final String? id;
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @JsonKey(name: 'set_type_code')
  final String? setTypeCode;
  @JsonKey(name: 'set_size_code')
  final String? setSizeCode;
  @JsonKey(name: 'laravel_through_key')
  final String? laravelThroughKey;
  final List<LanguageInfoBibleFilesetMetadata>? meta;

  const LanguageInfoBibleFileset(
      this.id, this.assetId, this.setTypeCode, this.setSizeCode, this.laravelThroughKey, this.meta);

  factory LanguageInfoBibleFileset.fromJson(Map<String, dynamic> json) => _$LanguageInfoBibleFilesetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoBibleFilesetToJson(this);
}

/// The metadata of [LanguageInfoBibleFileset].
@JsonSerializable()
class LanguageInfoBibleFilesetMetadata {
  @JsonKey(name: 'hash_id')
  final String? hashId;
  final String? name;
  final String? description;
  final String? iso;
  @JsonKey(name: 'language_id')
  final int? languageId;

  const LanguageInfoBibleFilesetMetadata(this.hashId, this.name, this.description, this.iso, this.languageId);

  factory LanguageInfoBibleFilesetMetadata.fromJson(Map<String, dynamic> json) =>
      _$LanguageInfoBibleFilesetMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoBibleFilesetMetadataToJson(this);
}

/// A resource of a [LanguageInfo].
@JsonSerializable()
class LanguageInfoResource {
  final int? id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  final String? iso;
  @JsonKey(name: 'organization_id')
  final int? organizationId;
  @JsonKey(name: 'source_id')
  final String? sourceId;
  final String? cover;
  @JsonKey(name: 'cover_thumbnail')
  final String? coverThumbnail;
  final String? type;
  final List<LanguageInfoResourceTranslation>? translations;
  final List<LanguageInfoResourceLink>? links;

  const LanguageInfoResource(this.id, this.languageId, this.iso, this.organizationId, this.sourceId, this.cover,
      this.coverThumbnail, this.type, this.translations, this.links);

  factory LanguageInfoResource.fromJson(Map<String, dynamic> json) => _$LanguageInfoResourceFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoResourceToJson(this);
}

/// A translation of a [LanguageInfoResource].
@JsonSerializable()
class LanguageInfoResourceTranslation {
  @JsonKey(name: 'language_id')
  final int? languageId;
  final String? title;
  final String? description;

  const LanguageInfoResourceTranslation(this.languageId, this.title, this.description);

  factory LanguageInfoResourceTranslation.fromJson(Map<String, dynamic> json) =>
      _$LanguageInfoResourceTranslationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoResourceTranslationToJson(this);
}

/// A link of a [LanguageInfoResource].
@JsonSerializable()
class LanguageInfoResourceLink {
  final String? title;
  final String? type;
  final String? url;

  const LanguageInfoResourceLink(this.title, this.type, this.url);

  factory LanguageInfoResourceLink.fromJson(Map<String, dynamic> json) => _$LanguageInfoResourceLinkFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoResourceLinkToJson(this);
}

/// Payload containing the data of a language.
@JsonSerializable()
class LanguageInfoResult {
  final LanguageInfo? data;

  const LanguageInfoResult(this.data);

  factory LanguageInfoResult.fromJson(Map<String, dynamic> json) => _$LanguageInfoResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageInfoResultToJson(this);
}

/// A language in a search result.
@JsonSerializable()
class LanguageSearch {
  final int? id;
  @JsonKey(name: 'glotto_id')
  final String? glottoId;
  final String? iso;
  final String? name;
  final String? autonym;
  final int? bibles;

  const LanguageSearch(this.id, this.glottoId, this.iso, this.name, this.autonym, this.bibles);

  factory LanguageSearch.fromJson(Map<String, dynamic> json) => _$LanguageSearchFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageSearchToJson(this);
}

/// Payload containing the data of the list of languages in a search.
@JsonSerializable()
class LanguageSearchResult {
  final List<LanguageSearch>? data;
  final LanguageSearchResultMetadata? meta;

  const LanguageSearchResult(this.data, this.meta);

  factory LanguageSearchResult.fromJson(Map<String, dynamic> json) => _$LanguageSearchResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageSearchResultToJson(this);
}

/// The metadata of [LanguageSearchResult].
@JsonSerializable()
class LanguageSearchResultMetadata {
  final LanguageSearchResultMetadataPagination? pagination;

  const LanguageSearchResultMetadata(this.pagination);

  factory LanguageSearchResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$LanguageSearchResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageSearchResultMetadataToJson(this);
}

/// The pagination data of [LanguageSearchResultMetadata].
@JsonSerializable()
class LanguageSearchResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;

  const LanguageSearchResultMetadataPagination(this.total, this.count, this.perPage, this.currentPage, this.totalPages);

  factory LanguageSearchResultMetadataPagination.fromJson(Map<String, dynamic> json) =>
      _$LanguageSearchResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$LanguageSearchResultMetadataPaginationToJson(this);
}
