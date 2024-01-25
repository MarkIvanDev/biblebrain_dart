// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bible.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bible _$BibleFromJson(Map<String, dynamic> json) => Bible(
      json['abbr'] as String?,
      json['name'] as String?,
      json['vname'] as String?,
      json['language'] as String?,
      json['autonym'] as String?,
      json['language_id'] as int?,
      json['iso'] as String?,
      json['date'] as String?,
      const FilesetsConverter().fromJson(json['filesets']),
    );

Map<String, dynamic> _$BibleToJson(Bible instance) => <String, dynamic>{
      'abbr': instance.abbr,
      'name': instance.name,
      'vname': instance.vname,
      'language': instance.language,
      'autonym': instance.autonym,
      'language_id': instance.languageId,
      'iso': instance.iso,
      'date': instance.date,
      'filesets': const FilesetsConverter().toJson(instance.filesets),
    };

BiblesResult _$BiblesResultFromJson(Map<String, dynamic> json) => BiblesResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Bible.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : BiblesResultMetadata.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BiblesResultToJson(BiblesResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

BiblesResultMetadata _$BiblesResultMetadataFromJson(
        Map<String, dynamic> json) =>
    BiblesResultMetadata(
      json['pagination'] == null
          ? null
          : BiblesResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BiblesResultMetadataToJson(
        BiblesResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

BiblesResultMetadataPagination _$BiblesResultMetadataPaginationFromJson(
        Map<String, dynamic> json) =>
    BiblesResultMetadataPagination(
      json['total'] as int?,
      json['per_page'] as int?,
      json['current_page'] as int?,
      json['last_page'] as int?,
      json['next_page_url'] as String?,
      json['prev_page_url'],
      json['from'] as int?,
      json['to'] as int?,
    );

Map<String, dynamic> _$BiblesResultMetadataPaginationToJson(
        BiblesResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'next_page_url': instance.next,
      'prev_page_url': instance.previous,
      'from': instance.from,
      'to': instance.to,
    };

BibleInfo _$BibleInfoFromJson(Map<String, dynamic> json) => BibleInfo(
      json['abbr'] as String?,
      json['alphabet'] == null
          ? null
          : BibleInfoAlphabet.fromJson(
              json['alphabet'] as Map<String, dynamic>),
      json['mark'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['vname'] as String?,
      json['vdescription'] as String?,
      const BibleInfoPublishersConverter().fromJson(json['publishers']),
      (json['providers'] as List<dynamic>?)
          ?.map((e) => Organization.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['equivalents'] as List<dynamic>?)
          ?.map((e) => BibleInfoEquivalent.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['language'] as String?,
      json['language_id'] as int?,
      json['iso'] as String?,
      json['date'] as String?,
      json['country'] as String?,
      (json['books'] as List<dynamic>?)
          ?.map((e) => BibleInfoBook.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['links'] as List<dynamic>?)
          ?.map((e) => BibleInfoLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      const FilesetsConverter().fromJson(json['filesets']),
      json['fonts'] == null
          ? null
          : BibleInfoFont.fromJson(json['fonts'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibleInfoToJson(BibleInfo instance) => <String, dynamic>{
      'abbr': instance.abbr,
      'alphabet': instance.alphabet?.toJson(),
      'mark': instance.mark,
      'name': instance.name,
      'description': instance.description,
      'vname': instance.vname,
      'vdescription': instance.vdescription,
      'publishers':
          const BibleInfoPublishersConverter().toJson(instance.publishers),
      'providers': instance.providers?.map((e) => e.toJson()).toList(),
      'equivalents': instance.equivalents?.map((e) => e.toJson()).toList(),
      'language': instance.language,
      'language_id': instance.languageId,
      'iso': instance.iso,
      'date': instance.date,
      'country': instance.country,
      'books': instance.books?.map((e) => e.toJson()).toList(),
      'links': instance.links?.map((e) => e.toJson()).toList(),
      'filesets': const FilesetsConverter().toJson(instance.filesets),
      'fonts': instance.fonts?.toJson(),
    };

BibleInfoAlphabet _$BibleInfoAlphabetFromJson(Map<String, dynamic> json) =>
    BibleInfoAlphabet(
      json['script'] as String?,
      json['name'] as String?,
      const AlphabetDirectionConverter().fromJson(json['direction'] as String?),
      json['unicode'] as bool?,
      json['requires_font'] as bool?,
    );

Map<String, dynamic> _$BibleInfoAlphabetToJson(BibleInfoAlphabet instance) =>
    <String, dynamic>{
      'script': instance.script,
      'name': instance.name,
      'direction':
          const AlphabetDirectionConverter().toJson(instance.direction),
      'unicode': instance.unicode,
      'requires_font': instance.requiresFont,
    };

BibleInfoEquivalent _$BibleInfoEquivalentFromJson(Map<String, dynamic> json) =>
    BibleInfoEquivalent(
      json['bible_id'] as String?,
      json['equivalent_id'] as String?,
      json['organization_id'] as int?,
      json['type'] as String?,
      json['site'] as String?,
      json['suffix'] as String?,
    );

Map<String, dynamic> _$BibleInfoEquivalentToJson(
        BibleInfoEquivalent instance) =>
    <String, dynamic>{
      'bible_id': instance.bibleId,
      'equivalent_id': instance.equivalentId,
      'organization_id': instance.organizationId,
      'type': instance.type,
      'site': instance.site,
      'suffix': instance.suffix,
    };

BibleInfoBook _$BibleInfoBookFromJson(Map<String, dynamic> json) =>
    BibleInfoBook(
      json['book_id'] as String?,
      json['name'] as String?,
      json['name_short'] as String?,
      (json['chapters'] as List<dynamic>?)?.map((e) => e as int).toList(),
      const BookTestamentConverter().fromJson(json['testament'] as String?),
    );

Map<String, dynamic> _$BibleInfoBookToJson(BibleInfoBook instance) =>
    <String, dynamic>{
      'book_id': instance.id,
      'name': instance.name,
      'name_short': instance.shortName,
      'chapters': instance.chapters,
      'testament': const BookTestamentConverter().toJson(instance.testament),
    };

BibleInfoLink _$BibleInfoLinkFromJson(Map<String, dynamic> json) =>
    BibleInfoLink(
      json['bible_id'] as String?,
      json['type'] as String?,
      json['url'] as String?,
      json['title'] as String?,
      json['provider'] as String?,
      json['organization_id'] as int?,
    );

Map<String, dynamic> _$BibleInfoLinkToJson(BibleInfoLink instance) =>
    <String, dynamic>{
      'bible_id': instance.bibleId,
      'type': instance.type,
      'url': instance.url,
      'title': instance.title,
      'provider': instance.provider,
      'organization_id': instance.organizationId,
    };

BibleInfoFont _$BibleInfoFontFromJson(Map<String, dynamic> json) =>
    BibleInfoFont(
      json['name'] as String?,
      json['data'] as String?,
      json['type'] as String?,
    );

Map<String, dynamic> _$BibleInfoFontToJson(BibleInfoFont instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': instance.data,
      'type': instance.type,
    };

BibleInfoResult _$BibleInfoResultFromJson(Map<String, dynamic> json) =>
    BibleInfoResult(
      json['data'] == null
          ? null
          : BibleInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibleInfoResultToJson(BibleInfoResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

Book _$BookFromJson(Map<String, dynamic> json) => Book(
      json['book_id'] as String?,
      json['book_id_usfx'] as String?,
      json['book_id_osis'] as String?,
      json['name'] as String?,
      json['name_short'] as String?,
      const BookTestamentConverter().fromJson(json['testament'] as String?),
      json['testament_order'] as int?,
      json['book_order'] as String?,
      json['book_group'] as String?,
      (json['chapters'] as List<dynamic>?)?.map((e) => e as int).toList(),
      (json['content_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BookToJson(Book instance) => <String, dynamic>{
      'book_id': instance.bookId,
      'book_id_usfx': instance.usfxId,
      'book_id_osis': instance.osisId,
      'name': instance.name,
      'name_short': instance.shortName,
      'testament': const BookTestamentConverter().toJson(instance.testament),
      'testament_order': instance.testamentOrder,
      'book_order': instance.bookOrder,
      'book_group': instance.bookGroup,
      'chapters': instance.chapters,
      'content_types': instance.contentTypes,
    };

BooksResult _$BooksResultFromJson(Map<String, dynamic> json) => BooksResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BooksResultToJson(BooksResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

Copyright _$CopyrightFromJson(Map<String, dynamic> json) => Copyright(
      json['id'] as String?,
      const MediaTypeConverter().fromJson(json['type'] as String?),
      json['size'] as String?,
      json['copyright'] == null
          ? null
          : CopyrightInfo.fromJson(json['copyright'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CopyrightToJson(Copyright instance) => <String, dynamic>{
      'id': instance.id,
      'type': const MediaTypeConverter().toJson(instance.type),
      'size': instance.size,
      'copyright': instance.copyright?.toJson(),
    };

CopyrightInfo _$CopyrightInfoFromJson(Map<String, dynamic> json) =>
    CopyrightInfo(
      json['copyright_date'] as String?,
      json['copyright'] as String?,
      json['copyright_description'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['open_access'] as int?,
      (json['organizations'] as List<dynamic>)
          .map((e) => Organization.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CopyrightInfoToJson(CopyrightInfo instance) =>
    <String, dynamic>{
      'copyright_date': instance.date,
      'copyright': instance.copyright,
      'copyright_description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'open_access': instance.openAccess,
      'organizations': instance.organizations.map((e) => e.toJson()).toList(),
    };

DefaultBible _$DefaultBibleFromJson(Map<String, dynamic> json) => DefaultBible(
      json['audio'] as String?,
      json['video'] as String?,
    );

Map<String, dynamic> _$DefaultBibleToJson(DefaultBible instance) =>
    <String, dynamic>{
      'audio': instance.audio,
      'video': instance.video,
    };

VerseByLanguage _$VerseByLanguageFromJson(Map<String, dynamic> json) =>
    VerseByLanguage(
      json['verse_start'] as int?,
      json['verse_end'] as int?,
      json['chapter'] as int?,
      json['book_id'] as String?,
      json['language_id'] as int?,
      json['bible_id'] as String?,
      json['verse_text'] as String?,
      json['fileset_id'] as String?,
      json['fileset_set_type_code'] as String?,
      json['fileset_set_size_code'] as String?,
      (json['bibleFilesets'] as List<dynamic>?)
          ?.map((e) =>
              VerseByLanguageBibleFileset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VerseByLanguageToJson(VerseByLanguage instance) =>
    <String, dynamic>{
      'verse_start': instance.verseStart,
      'verse_end': instance.verseEnd,
      'chapter': instance.chapter,
      'book_id': instance.bookId,
      'language_id': instance.languageId,
      'bible_id': instance.bibleId,
      'verse_text': instance.verseText,
      'fileset_id': instance.filesetId,
      'fileset_set_type_code': instance.filesetSetTypeCode,
      'fileset_set_size_code': instance.filesetSetSizeCode,
      'bibleFilesets': instance.bibleFilesets?.map((e) => e.toJson()).toList(),
    };

VerseByLanguageBibleFileset _$VerseByLanguageBibleFilesetFromJson(
        Map<String, dynamic> json) =>
    VerseByLanguageBibleFileset(
      json['id'] as String?,
      json['asset_id'] as String?,
      json['set_type_code'] as String?,
      json['set_size_code'] as String?,
    );

Map<String, dynamic> _$VerseByLanguageBibleFilesetToJson(
        VerseByLanguageBibleFileset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset_id': instance.assetId,
      'set_type_code': instance.setTypeCode,
      'set_size_code': instance.setSizeCode,
    };

VerseByLanguageResult _$VerseByLanguageResultFromJson(
        Map<String, dynamic> json) =>
    VerseByLanguageResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => VerseByLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : VerseByLanguageResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseByLanguageResultToJson(
        VerseByLanguageResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

VerseByLanguageResultMetadata _$VerseByLanguageResultMetadataFromJson(
        Map<String, dynamic> json) =>
    VerseByLanguageResultMetadata(
      json['pagination'] == null
          ? null
          : VerseByLanguageResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseByLanguageResultMetadataToJson(
        VerseByLanguageResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

VerseByLanguageResultMetadataPagination
    _$VerseByLanguageResultMetadataPaginationFromJson(
            Map<String, dynamic> json) =>
        VerseByLanguageResultMetadataPagination(
          json['total'] as int?,
          json['count'] as int?,
          json['per_page'] as int?,
          json['current_page'] as int?,
          json['total_pages'] as int?,
          json['links'] == null
              ? null
              : VerseByLanguageResultMetadataPaginationLinks.fromJson(
                  json['links'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VerseByLanguageResultMetadataPaginationToJson(
        VerseByLanguageResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
      'links': instance.links?.toJson(),
    };

VerseByLanguageResultMetadataPaginationLinks
    _$VerseByLanguageResultMetadataPaginationLinksFromJson(
            Map<String, dynamic> json) =>
        VerseByLanguageResultMetadataPaginationLinks(
          json['previous'] as String?,
          json['next'] as String?,
        );

Map<String, dynamic> _$VerseByLanguageResultMetadataPaginationLinksToJson(
        VerseByLanguageResultMetadataPaginationLinks instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'next': instance.next,
    };

VerseByVersion _$VerseByVersionFromJson(Map<String, dynamic> json) =>
    VerseByVersion(
      json['verse_start'] as int?,
      json['verse_end'] as int?,
      json['chapter'] as int?,
      json['book_id'] as String?,
      json['language_id'] as int?,
      json['bible_id'] as String?,
      json['verse_text'] as String?,
      json['fileset_id'] as String?,
      json['fileset_set_type_code'] as String?,
      json['fileset_set_size_code'] as String?,
      (json['bibleFilesets'] as List<dynamic>?)
          ?.map((e) =>
              VerseByVersionBibleFileset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VerseByVersionToJson(VerseByVersion instance) =>
    <String, dynamic>{
      'verse_start': instance.verseStart,
      'verse_end': instance.verseEnd,
      'chapter': instance.chapter,
      'book_id': instance.bookId,
      'language_id': instance.languageId,
      'bible_id': instance.bibleId,
      'verse_text': instance.verseText,
      'fileset_id': instance.filesetId,
      'fileset_set_type_code': instance.filesetSetTypeCode,
      'fileset_set_size_code': instance.filesetSetSizeCode,
      'bibleFilesets': instance.bibleFilesets?.map((e) => e.toJson()).toList(),
    };

VerseByVersionBibleFileset _$VerseByVersionBibleFilesetFromJson(
        Map<String, dynamic> json) =>
    VerseByVersionBibleFileset(
      json['id'] as String?,
      json['asset_id'] as String?,
      json['set_type_code'] as String?,
      json['set_size_code'] as String?,
    );

Map<String, dynamic> _$VerseByVersionBibleFilesetToJson(
        VerseByVersionBibleFileset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset_id': instance.assetId,
      'set_type_code': instance.setTypeCode,
      'set_size_code': instance.setSizeCode,
    };

VerseByVersionResult _$VerseByVersionResultFromJson(
        Map<String, dynamic> json) =>
    VerseByVersionResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => VerseByVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : VerseByVersionResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseByVersionResultToJson(
        VerseByVersionResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

VerseByVersionResultMetadata _$VerseByVersionResultMetadataFromJson(
        Map<String, dynamic> json) =>
    VerseByVersionResultMetadata(
      json['pagination'] == null
          ? null
          : VerseByVersionResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseByVersionResultMetadataToJson(
        VerseByVersionResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

VerseByVersionResultMetadataPagination
    _$VerseByVersionResultMetadataPaginationFromJson(
            Map<String, dynamic> json) =>
        VerseByVersionResultMetadataPagination(
          json['total'] as int?,
          json['count'] as int?,
          json['per_page'] as int?,
          json['current_page'] as int?,
          json['total_pages'] as int?,
          json['links'] == null
              ? null
              : VerseByVersionResultMetadataPaginationLinks.fromJson(
                  json['links'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$VerseByVersionResultMetadataPaginationToJson(
        VerseByVersionResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
      'links': instance.links?.toJson(),
    };

VerseByVersionResultMetadataPaginationLinks
    _$VerseByVersionResultMetadataPaginationLinksFromJson(
            Map<String, dynamic> json) =>
        VerseByVersionResultMetadataPaginationLinks(
          json['previous'] as String?,
          json['next'] as String?,
        );

Map<String, dynamic> _$VerseByVersionResultMetadataPaginationLinksToJson(
        VerseByVersionResultMetadataPaginationLinks instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'next': instance.next,
    };

BibleSearchByVersion _$BibleSearchByVersionFromJson(
        Map<String, dynamic> json) =>
    BibleSearchByVersion(
      json['abbr'] as String?,
      json['name'] as String?,
      json['language_id'] as int?,
    );

Map<String, dynamic> _$BibleSearchByVersionToJson(
        BibleSearchByVersion instance) =>
    <String, dynamic>{
      'abbr': instance.abbr,
      'name': instance.name,
      'language_id': instance.languageId,
    };

BibleSearchByVersionResult _$BibleSearchByVersionResultFromJson(
        Map<String, dynamic> json) =>
    BibleSearchByVersionResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => BibleSearchByVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : BibleSearchByVersionResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibleSearchByVersionResultToJson(
        BibleSearchByVersionResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

BibleSearchByVersionResultMetadata _$BibleSearchByVersionResultMetadataFromJson(
        Map<String, dynamic> json) =>
    BibleSearchByVersionResultMetadata(
      json['pagination'] == null
          ? null
          : BibleSearchByVersionResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibleSearchByVersionResultMetadataToJson(
        BibleSearchByVersionResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

BibleSearchByVersionResultMetadataPagination
    _$BibleSearchByVersionResultMetadataPaginationFromJson(
            Map<String, dynamic> json) =>
        BibleSearchByVersionResultMetadataPagination(
          json['total'] as int?,
          json['per_page'] as int?,
          json['current_page'] as int?,
          json['last_page'] as int?,
          json['next_page_url'] as String?,
          json['prev_page_url'] as String?,
          json['from'] as int?,
          json['to'] as int?,
        );

Map<String, dynamic> _$BibleSearchByVersionResultMetadataPaginationToJson(
        BibleSearchByVersionResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
      'from': instance.from,
      'to': instance.to,
    };

BibleSearch _$BibleSearchFromJson(Map<String, dynamic> json) => BibleSearch(
      json['abbr'] as String?,
      json['name'] as String?,
      json['language_id'] as int?,
    );

Map<String, dynamic> _$BibleSearchToJson(BibleSearch instance) =>
    <String, dynamic>{
      'abbr': instance.abbr,
      'name': instance.name,
      'language_id': instance.languageId,
    };

BibleSearchResult _$BibleSearchResultFromJson(Map<String, dynamic> json) =>
    BibleSearchResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => BibleSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : BibleSearchResultMetadata.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibleSearchResultToJson(BibleSearchResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

BibleSearchResultMetadata _$BibleSearchResultMetadataFromJson(
        Map<String, dynamic> json) =>
    BibleSearchResultMetadata(
      json['pagination'] == null
          ? null
          : BibleSearchResultMetadataPagination.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BibleSearchResultMetadataToJson(
        BibleSearchResultMetadata instance) =>
    <String, dynamic>{
      'pagination': instance.pagination?.toJson(),
    };

BibleSearchResultMetadataPagination
    _$BibleSearchResultMetadataPaginationFromJson(Map<String, dynamic> json) =>
        BibleSearchResultMetadataPagination(
          json['total'] as int?,
          json['per_page'] as int?,
          json['current_page'] as int?,
          json['last_page'] as int?,
          json['next_page_url'] as String?,
          json['prev_page_url'] as String?,
          json['from'] as int?,
          json['to'] as int?,
        );

Map<String, dynamic> _$BibleSearchResultMetadataPaginationToJson(
        BibleSearchResultMetadataPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
      'from': instance.from,
      'to': instance.to,
    };

VerseInfo _$VerseInfoFromJson(Map<String, dynamic> json) => VerseInfo(
      json['book_id'] as String?,
      json['book_name'] as String?,
      json['chapter'] as int?,
      json['chapter_alt'] as String?,
      json['chapter_start'] as int?,
      json['chapter_end'] as int?,
      json['verse_start'] as int?,
      json['verse_start_alt'] as String?,
      json['verse_end'] as int?,
      json[' verse_end_alt'] as String?,
      json['verse_text'] as String?,
      json['path'] as String?,
      json['duration'] as int?,
      json['thumbnail'] as String?,
      json['filesize_in_bytes'] as int?,
      json['youtube_url'] as String?,
    );

Map<String, dynamic> _$VerseInfoToJson(VerseInfo instance) => <String, dynamic>{
      'book_id': instance.bookId,
      'book_name': instance.bookName,
      'chapter': instance.chapter,
      'chapter_alt': instance.chapterAlt,
      'chapter_start': instance.chapterStart,
      'chapter_end': instance.chapterEnd,
      'verse_start': instance.verseStart,
      'verse_start_alt': instance.verseStartAlt,
      'verse_end': instance.verseEnd,
      ' verse_end_alt': instance.verseEndAlt,
      'verse_text': instance.verseText,
      'path': instance.path,
      'duration': instance.duration,
      'thumbnail': instance.thumbnail,
      'filesize_in_bytes': instance.fileSizeInBytes,
      'youtube_url': instance.youtubeUrl,
    };

VerseInfoResult _$VerseInfoResultFromJson(Map<String, dynamic> json) =>
    VerseInfoResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => VerseInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VerseInfoResultToJson(VerseInfoResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
