// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Verse _$VerseFromJson(Map<String, dynamic> json) => Verse(
  json['fileset_id'] as String?,
  json['book_id'] as String?,
  json['book_name'] as String?,
  json['book_name_alt'] as String?,
  (json['chapter'] as num?)?.toInt(),
  json['chapter_alt'] as String?,
  (json['chapter_start'] as num?)?.toInt(),
  (json['chapter_end'] as num?)?.toInt(),
  (json['verse_start'] as num?)?.toInt(),
  json['verse_start_alt'] as String?,
  (json['verse_end'] as num?)?.toInt(),
  json['verse_end_alt'] as String?,
  json['verse_text'] as String?,
  json['path'] as String?,
  json['thumbnail'] as String?,
  (json['duration'] as num?)?.toInt(),
  json['bitrate'] as String?,
  json['container'] as String?,
  json['multiple_mp3'] as bool?,
);

Map<String, dynamic> _$VerseToJson(Verse instance) => <String, dynamic>{
  'fileset_id': instance.filesetId,
  'book_id': instance.bookId,
  'book_name': instance.bookName,
  'book_name_alt': instance.bookNameAlt,
  'chapter': instance.chapter,
  'chapter_alt': instance.chapterAlt,
  'chapter_start': instance.chapterStart,
  'chapter_end': instance.chapterEnd,
  'verse_start': instance.verseStart,
  'verse_start_alt': instance.verseStartAlt,
  'verse_end': instance.verseEnd,
  'verse_end_alt': instance.verseEndAlt,
  'verse_text': instance.verseText,
  'path': instance.path,
  'thumbnail': instance.thumbnail,
  'duration': instance.duration,
  'bitrate': instance.bitrate,
  'container': instance.container,
  'multiple_mp3': instance.multipleMp3,
};

VersesResult _$VersesResultFromJson(Map<String, dynamic> json) => VersesResult(
  (json['data'] as List<dynamic>?)
      ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
      .toList(),
  json['meta'] == null
      ? null
      : VersesResultMetadata.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VersesResultToJson(VersesResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

VersesResultMetadata _$VersesResultMetadataFromJson(
  Map<String, dynamic> json,
) => VersesResultMetadata(
  json['pagination'] == null
      ? null
      : VersesResultMetadataPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$VersesResultMetadataToJson(
  VersesResultMetadata instance,
) => <String, dynamic>{'pagination': instance.pagination?.toJson()};

VersesResultMetadataPagination _$VersesResultMetadataPaginationFromJson(
  Map<String, dynamic> json,
) => VersesResultMetadataPagination(
  (json['total'] as num?)?.toInt(),
  (json['count'] as num?)?.toInt(),
  (json['per_page'] as num?)?.toInt(),
  (json['current_page'] as num?)?.toInt(),
  (json['total_pages'] as num?)?.toInt(),
  const VersesResultMetadataPaginationLinksConverter().fromJson(json['links']),
);

Map<String, dynamic> _$VersesResultMetadataPaginationToJson(
  VersesResultMetadataPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
  'links': const VersesResultMetadataPaginationLinksConverter().toJson(
    instance.links,
  ),
};

VersesResultMetadataPaginationLinks
_$VersesResultMetadataPaginationLinksFromJson(Map<String, dynamic> json) =>
    VersesResultMetadataPaginationLinks(
      json['previous'] as String?,
      json['next'] as String?,
    );

Map<String, dynamic> _$VersesResultMetadataPaginationLinksToJson(
  VersesResultMetadataPaginationLinks instance,
) => <String, dynamic>{'previous': instance.previous, 'next': instance.next};

Filesets _$FilesetsFromJson(Map<String, dynamic> json) => Filesets(
  (json['dbp-prod'] as List<dynamic>?)
      ?.map((e) => Fileset.fromJson(e as Map<String, dynamic>))
      .toList(),
  (json['dbp-vid'] as List<dynamic>?)
      ?.map((e) => Fileset.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilesetsToJson(Filesets instance) => <String, dynamic>{
  'dbp-prod': instance.prod?.map((e) => e.toJson()).toList(),
  'dbp-vid': instance.vid?.map((e) => e.toJson()).toList(),
};

Fileset _$FilesetFromJson(Map<String, dynamic> json) => Fileset(
  json['id'] as String?,
  json['type'] as String?,
  json['size'] as String?,
  json['stock_no'] as String?,
  json['volume'] as String?,
);

Map<String, dynamic> _$FilesetToJson(Fileset instance) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'size': instance.size,
  'stock_no': instance.stockNo,
  'volume': instance.volume,
};

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
  (json['id'] as num?)?.toInt(),
  json['slug'] as String?,
  json['abbreviation'] as String?,
  json['primaryColor'] as String?,
  json['secondaryColor'] as String?,
  (json['inactive'] as num?)?.toInt(),
  json['url_facebook'] as String?,
  json['url_website'] as String?,
  json['url_donate'] as String?,
  json['url_twitter'] as String?,
  json['address'] as String?,
  json['address2'] as String?,
  json['city'] as String?,
  json['state'] as String?,
  json['country'] as String?,
  (json['zip'] as num?)?.toInt(),
  json['phone'] as String?,
  json['email'] as String?,
  json['email_director'] as String?,
  (json['latitude'] as num?)?.toDouble(),
  (json['longitude'] as num?)?.toDouble(),
  json['laravel_through_key'] as String?,
  json['pivot'] == null
      ? null
      : OrganizationPivot.fromJson(json['pivot'] as Map<String, dynamic>),
  json['logo_icon'] == null
      ? null
      : OrganizationLogoIcon.fromJson(
          json['logo_icon'] as Map<String, dynamic>,
        ),
  (json['logos'] as List<dynamic>?)
      ?.map((e) => OrganizationLogoIcon.fromJson(e as Map<String, dynamic>))
      .toList(),
  (json['translations'] as List<dynamic>?)
      ?.map((e) => OrganizationTranslation.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'abbreviation': instance.abbreviation,
      'primaryColor': instance.primaryColor,
      'secondaryColor': instance.secondaryColor,
      'inactive': instance.inactive,
      'url_facebook': instance.facebook,
      'url_website': instance.website,
      'url_donate': instance.donate,
      'url_twitter': instance.twitter,
      'address': instance.address,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'zip': instance.zip,
      'phone': instance.phone,
      'email': instance.email,
      'email_director': instance.emailDirector,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'laravel_through_key': instance.laravelThroughKey,
      'pivot': instance.pivot?.toJson(),
      'logo_icon': instance.logo?.toJson(),
      'logos': instance.logos?.map((e) => e.toJson()).toList(),
      'translations': instance.translations?.map((e) => e.toJson()).toList(),
    };

OrganizationPivot _$OrganizationPivotFromJson(Map<String, dynamic> json) =>
    OrganizationPivot(
      json['bible_id'] as String?,
      (json['organization_id'] as num?)?.toInt(),
      json['relationship_type'] as String?,
    );

Map<String, dynamic> _$OrganizationPivotToJson(OrganizationPivot instance) =>
    <String, dynamic>{
      'bible_id': instance.bibleId,
      'organization_id': instance.organizationId,
      'relationship_type': instance.relationshipType,
    };

OrganizationLogoIcon _$OrganizationLogoIconFromJson(
  Map<String, dynamic> json,
) => OrganizationLogoIcon(
  (json['language_id'] as num?)?.toInt(),
  json['language_iso'] as String?,
  json['url'] as String?,
  (json['icon'] as num?)?.toInt(),
);

Map<String, dynamic> _$OrganizationLogoIconToJson(
  OrganizationLogoIcon instance,
) => <String, dynamic>{
  'language_id': instance.languageId,
  'language_iso': instance.languageIso,
  'url': instance.url,
  'icon': instance.icon,
};

OrganizationTranslation _$OrganizationTranslationFromJson(
  Map<String, dynamic> json,
) => OrganizationTranslation(
  (json['language_id'] as num?)?.toInt(),
  (json['vernacular'] as num?)?.toInt(),
  (json['alt'] as num?)?.toInt(),
  json['name'] as String?,
  json['description_short'] as String?,
);

Map<String, dynamic> _$OrganizationTranslationToJson(
  OrganizationTranslation instance,
) => <String, dynamic>{
  'language_id': instance.languageId,
  'vernacular': instance.vernacular,
  'alt': instance.alt,
  'name': instance.name,
  'description_short': instance.descriptionShort,
};
