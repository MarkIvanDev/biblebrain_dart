// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      json['id'] as int?,
      json['glotto_id'] as String?,
      json['iso'] as String?,
      json['name'] as String?,
      json['autonym'] as String?,
      json['bibles'] as int?,
      json['filesets'] as int?,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'id': instance.id,
      'glotto_id': instance.glottoId,
      'iso': instance.iso,
      'name': instance.name,
      'autonym': instance.autonym,
      'bibles': instance.bibles,
      'filesets': instance.filesets,
    };

LanguagesResult _$LanguagesResultFromJson(Map<String, dynamic> json) =>
    LanguagesResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : LanguagesResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguagesResultToJson(LanguagesResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

LanguagesResultMetadata _$LanguagesResultMetadataFromJson(
        Map<String, dynamic> json) =>
    LanguagesResultMetadata(
      json['pagination'] == null
          ? null
          : LanguagesResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguagesResultMetadataToJson(
        LanguagesResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

LanguagesResultMetadataPagination _$LanguagesResultMetadataPaginationFromJson(
        Map<String, dynamic> json) =>
    LanguagesResultMetadataPagination(
      json['total'] as int?,
      json['count'] as int?,
      json['per_page'] as int?,
      json['current_page'] as int?,
      json['total_pages'] as int?,
      json['links'] == null
          ? null
          : LanguagesResultMetadataPaginationLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguagesResultMetadataPaginationToJson(
        LanguagesResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
      'links': instance.links?.toJson(),
    };

LanguagesResultMetadataPaginationLinks
    _$LanguagesResultMetadataPaginationLinksFromJson(
            Map<String, dynamic> json) =>
        LanguagesResultMetadataPaginationLinks(
          json['previous'] as String?,
          json['next'] as String?,
        );

Map<String, dynamic> _$LanguagesResultMetadataPaginationLinksToJson(
        LanguagesResultMetadataPaginationLinks instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'next': instance.next,
    };

LanguageInfo _$LanguageInfoFromJson(Map<String, dynamic> json) => LanguageInfo(
      json['id'] as int?,
      json['name'] as String?,
      json['description'] as String?,
      json['autonym'] as String?,
      json['glotto_id'] as String?,
      json['iso'] as String?,
      json['maps'] as String?,
      json['area'] as String?,
      json['population'] as int?,
      json['country_id'] as String?,
      json['country_name'] as String?,
      json['alternativeNames'],
      const StringMapOrEmptyArrayConverter().fromJson(json['classifications']),
      (json['bibles'] as List<dynamic>?)
          ?.map((e) => LanguageInfoBible.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['resources'] as List<dynamic>?)
          ?.map((e) => LanguageInfoResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageInfoToJson(LanguageInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'autonym': instance.autonym,
      'glotto_id': instance.glottoId,
      'iso': instance.iso,
      'maps': instance.maps,
      'area': instance.area,
      'population': instance.population,
      'country_id': instance.countryId,
      'country_name': instance.countryName,
      'alternativeNames': instance.alternativeNames,
      'classifications': _$JsonConverterToJson<dynamic, Map<String, String>>(
          instance.classifications,
          const StringMapOrEmptyArrayConverter().toJson),
      'bibles': instance.bibles?.map((e) => e.toJson()).toList(),
      'resources': instance.resources?.map((e) => e.toJson()).toList(),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

LanguageInfoBible _$LanguageInfoBibleFromJson(Map<String, dynamic> json) =>
    LanguageInfoBible(
      json['id'] as String,
      json['language_id'] as int?,
      const BibleVersificationConverter()
          .fromJson(json['versification'] as String?),
      json['numeral_system_id'] as String?,
      json['scope'] as String?,
      json['script'] as String?,
      json['derived'] as String?,
      json['copyright'] as String?,
      json['reviewed'] as int?,
      (json['translations'] as List<dynamic>?)
          ?.map((e) =>
              LanguageInfoBibleTranslation.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['filesets'] as List<dynamic>?)
          ?.map((e) =>
              LanguageInfoBibleFileset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageInfoBibleToJson(LanguageInfoBible instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'versification':
          const BibleVersificationConverter().toJson(instance.versification),
      'numeral_system_id': instance.numeralSystemId,
      'scope': instance.scope,
      'script': instance.script,
      'derived': instance.derived,
      'copyright': instance.copyright,
      'reviewed': instance.reviewed,
      'translations': instance.translations?.map((e) => e.toJson()).toList(),
      'filesets': instance.filesets?.map((e) => e.toJson()).toList(),
    };

LanguageInfoBibleTranslation _$LanguageInfoBibleTranslationFromJson(
        Map<String, dynamic> json) =>
    LanguageInfoBibleTranslation(
      json['language_id'] as int?,
      json['bible_id'] as String?,
      json['vernacular'] as int?,
      json['vernacular_trade'] as int?,
      json['name'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$LanguageInfoBibleTranslationToJson(
        LanguageInfoBibleTranslation instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'bible_id': instance.bibleId,
      'vernacular': instance.vernacular,
      'vernacular_trade': instance.vernacularTrade,
      'name': instance.name,
      'description': instance.description,
    };

LanguageInfoBibleFileset _$LanguageInfoBibleFilesetFromJson(
        Map<String, dynamic> json) =>
    LanguageInfoBibleFileset(
      json['id'] as String?,
      json['asset_id'] as String?,
      json['set_type_code'] as String?,
      json['set_size_code'] as String?,
      json['laravel_through_key'] as String?,
      (json['meta'] as List<dynamic>?)
          ?.map((e) => LanguageInfoBibleFilesetMetadata.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageInfoBibleFilesetToJson(
        LanguageInfoBibleFileset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset_id': instance.assetId,
      'set_type_code': instance.setTypeCode,
      'set_size_code': instance.setSizeCode,
      'laravel_through_key': instance.laravelThroughKey,
      'meta': instance.meta?.map((e) => e.toJson()).toList(),
    };

LanguageInfoBibleFilesetMetadata _$LanguageInfoBibleFilesetMetadataFromJson(
        Map<String, dynamic> json) =>
    LanguageInfoBibleFilesetMetadata(
      json['hash_id'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['iso'] as String?,
      json['language_id'] as int?,
    );

Map<String, dynamic> _$LanguageInfoBibleFilesetMetadataToJson(
        LanguageInfoBibleFilesetMetadata instance) =>
    <String, dynamic>{
      'hash_id': instance.hashId,
      'name': instance.name,
      'description': instance.description,
      'iso': instance.iso,
      'language_id': instance.languageId,
    };

LanguageInfoResource _$LanguageInfoResourceFromJson(
        Map<String, dynamic> json) =>
    LanguageInfoResource(
      json['id'] as int?,
      json['language_id'] as int?,
      json['iso'] as String?,
      json['organization_id'] as int?,
      json['source_id'] as String?,
      json['cover'] as String?,
      json['cover_thumbnail'] as String?,
      json['type'] as String?,
      (json['translations'] as List<dynamic>?)
          ?.map((e) => LanguageInfoResourceTranslation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      (json['links'] as List<dynamic>?)
          ?.map((e) =>
              LanguageInfoResourceLink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LanguageInfoResourceToJson(
        LanguageInfoResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'iso': instance.iso,
      'organization_id': instance.organizationId,
      'source_id': instance.sourceId,
      'cover': instance.cover,
      'cover_thumbnail': instance.coverThumbnail,
      'type': instance.type,
      'translations': instance.translations?.map((e) => e.toJson()).toList(),
      'links': instance.links?.map((e) => e.toJson()).toList(),
    };

LanguageInfoResourceTranslation _$LanguageInfoResourceTranslationFromJson(
        Map<String, dynamic> json) =>
    LanguageInfoResourceTranslation(
      json['language_id'] as int?,
      json['title'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$LanguageInfoResourceTranslationToJson(
        LanguageInfoResourceTranslation instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'title': instance.title,
      'description': instance.description,
    };

LanguageInfoResourceLink _$LanguageInfoResourceLinkFromJson(
        Map<String, dynamic> json) =>
    LanguageInfoResourceLink(
      json['title'] as String?,
      json['type'] as String?,
      json['url'] as String?,
    );

Map<String, dynamic> _$LanguageInfoResourceLinkToJson(
        LanguageInfoResourceLink instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };

LanguageInfoResult _$LanguageInfoResultFromJson(Map<String, dynamic> json) =>
    LanguageInfoResult(
      json['data'] == null
          ? null
          : LanguageInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguageInfoResultToJson(LanguageInfoResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

LanguageSearch _$LanguageSearchFromJson(Map<String, dynamic> json) =>
    LanguageSearch(
      json['id'] as int?,
      json['glotto_id'] as String?,
      json['iso'] as String?,
      json['name'] as String?,
      json['autonym'] as String?,
      json['bibles'] as int?,
    );

Map<String, dynamic> _$LanguageSearchToJson(LanguageSearch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'glotto_id': instance.glottoId,
      'iso': instance.iso,
      'name': instance.name,
      'autonym': instance.autonym,
      'bibles': instance.bibles,
    };

LanguageSearchResult _$LanguageSearchResultFromJson(
        Map<String, dynamic> json) =>
    LanguageSearchResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => LanguageSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : LanguageSearchResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguageSearchResultToJson(
        LanguageSearchResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

LanguageSearchResultMetadata _$LanguageSearchResultMetadataFromJson(
        Map<String, dynamic> json) =>
    LanguageSearchResultMetadata(
      json['pagination'] == null
          ? null
          : LanguageSearchResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LanguageSearchResultMetadataToJson(
        LanguageSearchResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

LanguageSearchResultMetadataPagination
    _$LanguageSearchResultMetadataPaginationFromJson(
            Map<String, dynamic> json) =>
        LanguageSearchResultMetadataPagination(
          json['total'] as int?,
          json['count'] as int?,
          json['per_page'] as int?,
          json['current_page'] as int?,
          json['total_pages'] as int?,
        );

Map<String, dynamic> _$LanguageSearchResultMetadataPaginationToJson(
        LanguageSearchResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
    };
