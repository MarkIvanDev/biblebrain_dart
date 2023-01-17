import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';

part 'country.g.dart';

/// A country.
@JsonSerializable()
class Country {
  final String? name;
  @JsonKey(name: 'continent_code')
  final String continentCode;
  final CountryCodes? codes;

  const Country(this.name, this.continentCode, this.codes);

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

/// The codes of a [Country].
@JsonSerializable()
class CountryCodes {
  final String? fips;
  @JsonKey(name: 'iso_a3')
  final String? isoA3;
  @JsonKey(name: 'iso_a2')
  final String? isoA2;

  const CountryCodes(this.fips, this.isoA3, this.isoA2);

  factory CountryCodes.fromJson(Map<String, dynamic> json) => _$CountryCodesFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountryCodesToJson(this);
}

/// Information of a country.
@JsonSerializable()
class CountryInfo {
  final String? name;
  final String? introduction;
  @JsonKey(name: 'continent_code')
  final String? continentCode;
  @CountryInfoMapInfoMapOrEmptyArrayConverter()
  final Map<String, CountryInfoMapInfo> maps;
  final int? wfb;
  final int? ethnologue;
  final List<CountryInfoLanguage>? languages;
  final CountryCodes? codes;

  const CountryInfo(this.name, this.introduction, this.continentCode, this.maps, this.wfb, this.ethnologue,
      this.languages, this.codes);

  factory CountryInfo.fromJson(Map<String, dynamic> json) => _$CountryInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountryInfoToJson(this);
}

/// A map info of a [CountryInfo].
@JsonSerializable()
class CountryInfoMapInfo {
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @JsonKey(name: 'map_url')
  final String? mapUrl;

  const CountryInfoMapInfo(this.thumbnailUrl, this.mapUrl);

  factory CountryInfoMapInfo.fromJson(Map<String, dynamic> json) => _$CountryInfoMapInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountryInfoMapInfoToJson(this);
}

/// A language of a [CountryInfo].
@JsonSerializable()
class CountryInfoLanguage {
  final String? name;
  final String? iso;
  @StringMapOrEmptyArrayConverter()
  final Map<String, String> bibles;

  const CountryInfoLanguage(this.name, this.iso, this.bibles);

  factory CountryInfoLanguage.fromJson(Map<String, dynamic> json) => _$CountryInfoLanguageFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountryInfoLanguageToJson(this);
}

/// Payload containing the data of a list of countries.
@JsonSerializable()
class CountriesResult {
  final List<Country>? data;
  final CountriesResultMetadata? meta;

  const CountriesResult(this.data, this.meta);

  factory CountriesResult.fromJson(Map<String, dynamic> json) => _$CountriesResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountriesResultToJson(this);
}

/// The metadata of [CountriesResult].
@JsonSerializable()
class CountriesResultMetadata {
  final CountriesResultMetadataPagination? pagination;

  const CountriesResultMetadata(this.pagination);

  factory CountriesResultMetadata.fromJson(Map<String, dynamic> json) => _$CountriesResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountriesResultMetadataToJson(this);
}

/// The pagination data of [CountriesResultMetadata].
@JsonSerializable()
class CountriesResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  final CountriesResultMetadataPaginationLinks? links;

  const CountriesResultMetadataPagination(
      this.total, this.count, this.perPage, this.currentPage, this.totalPages, this.links);

  factory CountriesResultMetadataPagination.fromJson(Map<String, dynamic> json) =>
      _$CountriesResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountriesResultMetadataPaginationToJson(this);
}

/// The links data of [CountriesResultMetadataPagination].
@JsonSerializable()
class CountriesResultMetadataPaginationLinks {
  final String? previous;
  final String? next;

  const CountriesResultMetadataPaginationLinks(this.previous, this.next);

  factory CountriesResultMetadataPaginationLinks.fromJson(Map<String, dynamic> json) =>
      _$CountriesResultMetadataPaginationLinksFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountriesResultMetadataPaginationLinksToJson(this);
}

/// Payload containing the data of a country.
@JsonSerializable()
class CountryInfoResult {
  final CountryInfo? data;

  const CountryInfoResult(this.data);

  factory CountryInfoResult.fromJson(Map<String, dynamic> json) => _$CountryInfoResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountryInfoResultToJson(this);
}

/// A country in a search result.
@JsonSerializable()
class CountrySearch {
  final String? name;
  final String? continentCode;
  final CountrySearchCodes? codes;

  const CountrySearch(this.name, this.continentCode, this.codes);

  factory CountrySearch.fromJson(Map<String, dynamic> json) => _$CountrySearchFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountrySearchToJson(this);
}

/// The codes of a [CountrySearch].
@JsonSerializable()
class CountrySearchCodes {
  final String? fips;
  @JsonKey(name: 'iso_a3')
  final String? isoA3;
  @JsonKey(name: 'iso_a2')
  final String? isoA2;

  const CountrySearchCodes(this.fips, this.isoA3, this.isoA2);

  factory CountrySearchCodes.fromJson(Map<String, dynamic> json) => _$CountrySearchCodesFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountrySearchCodesToJson(this);
}

/// Payload containing the data of a list of countries in a search.
@JsonSerializable()
class CountrySearchResult {
  final List<CountrySearch>? data;
  final CountrySearchResultMetadata? meta;

  const CountrySearchResult(this.data, this.meta);

  factory CountrySearchResult.fromJson(Map<String, dynamic> json) => _$CountrySearchResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountrySearchResultToJson(this);
}

/// The metadata of [CountrySearchResult].
@JsonSerializable()
class CountrySearchResultMetadata {
  final CountrySearchResultMetadataPagination? pagination;

  const CountrySearchResultMetadata(this.pagination);

  factory CountrySearchResultMetadata.fromJson(Map<String, dynamic> json) =>
      _$CountrySearchResultMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountrySearchResultMetadataToJson(this);
}

/// The pagination data of [CountrySearchResultMetadata].
@JsonSerializable()
class CountrySearchResultMetadataPagination {
  final int? total;
  final int? count;
  @JsonKey(name: 'per_page')
  final int? perPage;
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @JsonKey(name: 'total_pages')
  final int? totalPages;

  const CountrySearchResultMetadataPagination(this.total, this.count, this.perPage, this.currentPage, this.totalPages);

  factory CountrySearchResultMetadataPagination.fromJson(Map<String, dynamic> json) =>
      _$CountrySearchResultMetadataPaginationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$CountrySearchResultMetadataPaginationToJson(this);
}
