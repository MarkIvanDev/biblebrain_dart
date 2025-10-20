// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
  json['name'] as String?,
  json['continent_code'] as String,
  json['codes'] == null
      ? null
      : CountryCodes.fromJson(json['codes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'name': instance.name,
  'continent_code': instance.continentCode,
  'codes': instance.codes?.toJson(),
};

CountryCodes _$CountryCodesFromJson(Map<String, dynamic> json) => CountryCodes(
  json['fips'] as String?,
  json['iso_a3'] as String?,
  json['iso_a2'] as String?,
);

Map<String, dynamic> _$CountryCodesToJson(CountryCodes instance) =>
    <String, dynamic>{
      'fips': instance.fips,
      'iso_a3': instance.isoA3,
      'iso_a2': instance.isoA2,
    };

CountryInfo _$CountryInfoFromJson(Map<String, dynamic> json) => CountryInfo(
  json['name'] as String?,
  json['introduction'] as String?,
  json['continent_code'] as String?,
  const CountryInfoMapInfoMapOrEmptyArrayConverter().fromJson(json['maps']),
  (json['wfb'] as num?)?.toInt(),
  (json['ethnologue'] as num?)?.toInt(),
  (json['languages'] as List<dynamic>?)
      ?.map((e) => CountryInfoLanguage.fromJson(e as Map<String, dynamic>))
      .toList(),
  json['codes'] == null
      ? null
      : CountryCodes.fromJson(json['codes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CountryInfoToJson(CountryInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'introduction': instance.introduction,
      'continent_code': instance.continentCode,
      'maps': const CountryInfoMapInfoMapOrEmptyArrayConverter().toJson(
        instance.maps,
      ),
      'wfb': instance.wfb,
      'ethnologue': instance.ethnologue,
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
      'codes': instance.codes?.toJson(),
    };

CountryInfoMapInfo _$CountryInfoMapInfoFromJson(Map<String, dynamic> json) =>
    CountryInfoMapInfo(
      json['thumbnail_url'] as String?,
      json['map_url'] as String?,
    );

Map<String, dynamic> _$CountryInfoMapInfoToJson(CountryInfoMapInfo instance) =>
    <String, dynamic>{
      'thumbnail_url': instance.thumbnailUrl,
      'map_url': instance.mapUrl,
    };

CountryInfoLanguage _$CountryInfoLanguageFromJson(Map<String, dynamic> json) =>
    CountryInfoLanguage(
      json['name'] as String?,
      json['iso'] as String?,
      const StringMapOrEmptyArrayConverter().fromJson(json['bibles']),
    );

Map<String, dynamic> _$CountryInfoLanguageToJson(
  CountryInfoLanguage instance,
) => <String, dynamic>{
  'name': instance.name,
  'iso': instance.iso,
  'bibles': const StringMapOrEmptyArrayConverter().toJson(instance.bibles),
};

CountriesResult _$CountriesResultFromJson(Map<String, dynamic> json) =>
    CountriesResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : CountriesResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CountriesResultToJson(CountriesResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

CountriesResultMetadata _$CountriesResultMetadataFromJson(
  Map<String, dynamic> json,
) => CountriesResultMetadata(
  json['pagination'] == null
      ? null
      : CountriesResultMetadataPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CountriesResultMetadataToJson(
  CountriesResultMetadata instance,
) => <String, dynamic>{'pagination': instance.pagination?.toJson()};

CountriesResultMetadataPagination _$CountriesResultMetadataPaginationFromJson(
  Map<String, dynamic> json,
) => CountriesResultMetadataPagination(
  (json['total'] as num?)?.toInt(),
  (json['count'] as num?)?.toInt(),
  (json['per_page'] as num?)?.toInt(),
  (json['current_page'] as num?)?.toInt(),
  (json['total_pages'] as num?)?.toInt(),
  json['links'] == null
      ? null
      : CountriesResultMetadataPaginationLinks.fromJson(
          json['links'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CountriesResultMetadataPaginationToJson(
  CountriesResultMetadataPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
  'links': instance.links?.toJson(),
};

CountriesResultMetadataPaginationLinks
_$CountriesResultMetadataPaginationLinksFromJson(Map<String, dynamic> json) =>
    CountriesResultMetadataPaginationLinks(
      json['previous'] as String?,
      json['next'] as String?,
    );

Map<String, dynamic> _$CountriesResultMetadataPaginationLinksToJson(
  CountriesResultMetadataPaginationLinks instance,
) => <String, dynamic>{'previous': instance.previous, 'next': instance.next};

CountryInfoResult _$CountryInfoResultFromJson(Map<String, dynamic> json) =>
    CountryInfoResult(
      json['data'] == null
          ? null
          : CountryInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountryInfoResultToJson(CountryInfoResult instance) =>
    <String, dynamic>{'data': instance.data?.toJson()};

CountrySearch _$CountrySearchFromJson(Map<String, dynamic> json) =>
    CountrySearch(
      json['name'] as String?,
      json['continentCode'] as String?,
      json['codes'] == null
          ? null
          : CountrySearchCodes.fromJson(json['codes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountrySearchToJson(CountrySearch instance) =>
    <String, dynamic>{
      'name': instance.name,
      'continentCode': instance.continentCode,
      'codes': instance.codes?.toJson(),
    };

CountrySearchCodes _$CountrySearchCodesFromJson(Map<String, dynamic> json) =>
    CountrySearchCodes(
      json['fips'] as String?,
      json['iso_a3'] as String?,
      json['iso_a2'] as String?,
    );

Map<String, dynamic> _$CountrySearchCodesToJson(CountrySearchCodes instance) =>
    <String, dynamic>{
      'fips': instance.fips,
      'iso_a3': instance.isoA3,
      'iso_a2': instance.isoA2,
    };

CountrySearchResult _$CountrySearchResultFromJson(Map<String, dynamic> json) =>
    CountrySearchResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => CountrySearch.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : CountrySearchResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CountrySearchResultToJson(
  CountrySearchResult instance,
) => <String, dynamic>{
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'meta': instance.meta?.toJson(),
};

CountrySearchResultMetadata _$CountrySearchResultMetadataFromJson(
  Map<String, dynamic> json,
) => CountrySearchResultMetadata(
  json['pagination'] == null
      ? null
      : CountrySearchResultMetadataPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$CountrySearchResultMetadataToJson(
  CountrySearchResultMetadata instance,
) => <String, dynamic>{'pagination': instance.pagination?.toJson()};

CountrySearchResultMetadataPagination
_$CountrySearchResultMetadataPaginationFromJson(Map<String, dynamic> json) =>
    CountrySearchResultMetadataPagination(
      (json['total'] as num?)?.toInt(),
      (json['count'] as num?)?.toInt(),
      (json['per_page'] as num?)?.toInt(),
      (json['current_page'] as num?)?.toInt(),
      (json['total_pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountrySearchResultMetadataPaginationToJson(
  CountrySearchResultMetadataPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
