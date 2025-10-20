// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadableFileset _$DownloadableFilesetFromJson(Map<String, dynamic> json) =>
    DownloadableFileset(
      json['type'] as String?,
      json['language'] as String?,
      json['licensor'] as String?,
      json['fileset_id'] as String?,
    );

Map<String, dynamic> _$DownloadableFilesetToJson(
  DownloadableFileset instance,
) => <String, dynamic>{
  'type': instance.type,
  'language': instance.language,
  'licensor': instance.licensor,
  'fileset_id': instance.filesetId,
};

DownloadableFilesetResult _$DownloadableFilesetResultFromJson(
  Map<String, dynamic> json,
) => DownloadableFilesetResult(
  (json['data'] as List<dynamic>?)
      ?.map((e) => DownloadableFileset.fromJson(e as Map<String, dynamic>))
      .toList(),
  json['meta'] == null
      ? null
      : DownloadableFilesetResultMetadata.fromJson(
          json['meta'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DownloadableFilesetResultToJson(
  DownloadableFilesetResult instance,
) => <String, dynamic>{
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'meta': instance.meta?.toJson(),
};

DownloadableFilesetResultMetadata _$DownloadableFilesetResultMetadataFromJson(
  Map<String, dynamic> json,
) => DownloadableFilesetResultMetadata(
  json['pagination'] == null
      ? null
      : DownloadableFilesetResultMetadataPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DownloadableFilesetResultMetadataToJson(
  DownloadableFilesetResultMetadata instance,
) => <String, dynamic>{'pagination': instance.pagination?.toJson()};

DownloadableFilesetResultMetadataPagination
_$DownloadableFilesetResultMetadataPaginationFromJson(
  Map<String, dynamic> json,
) => DownloadableFilesetResultMetadataPagination(
  (json['total'] as num?)?.toInt(),
  (json['count'] as num?)?.toInt(),
  (json['per_page'] as num?)?.toInt(),
  (json['current_page'] as num?)?.toInt(),
  (json['total_pages'] as num?)?.toInt(),
  json['links'] == null
      ? null
      : DownloadableFilesetResultMetadataPaginationLinks.fromJson(
          json['links'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DownloadableFilesetResultMetadataPaginationToJson(
  DownloadableFilesetResultMetadataPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
  'links': instance.links?.toJson(),
};

DownloadableFilesetResultMetadataPaginationLinks
_$DownloadableFilesetResultMetadataPaginationLinksFromJson(
  Map<String, dynamic> json,
) => DownloadableFilesetResultMetadataPaginationLinks(
  json['previous'] as String?,
  json['next'] as String?,
);

Map<String, dynamic> _$DownloadableFilesetResultMetadataPaginationLinksToJson(
  DownloadableFilesetResultMetadataPaginationLinks instance,
) => <String, dynamic>{'previous': instance.previous, 'next': instance.next};

DownloadContent _$DownloadContentFromJson(Map<String, dynamic> json) =>
    DownloadContent(
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
      json[' verse_end_alt'] as String?,
      json['verse_text'] as String?,
      json['path'] as String?,
      (json['duration'] as num?)?.toInt(),
      json['thumbnail'] as String?,
      (json['filesize_in_bytes'] as num?)?.toInt(),
      json['youtube_url'] as String?,
    );

Map<String, dynamic> _$DownloadContentToJson(DownloadContent instance) =>
    <String, dynamic>{
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
      ' verse_end_alt': instance.verseEndAlt,
      'verse_text': instance.verseText,
      'path': instance.path,
      'duration': instance.duration,
      'thumbnail': instance.thumbnail,
      'filesize_in_bytes': instance.fileSizeInBytes,
      'youtube_url': instance.youtubeUrl,
    };

DownloadContentResult _$DownloadContentResultFromJson(
  Map<String, dynamic> json,
) => DownloadContentResult(
  (json['data'] as List<dynamic>?)
      ?.map((e) => DownloadContent.fromJson(e as Map<String, dynamic>))
      .toList(),
  json['meta'] == null
      ? null
      : DownloadContentResultMetadata.fromJson(
          json['meta'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DownloadContentResultToJson(
  DownloadContentResult instance,
) => <String, dynamic>{
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'meta': instance.meta?.toJson(),
};

DownloadContentResultMetadata _$DownloadContentResultMetadataFromJson(
  Map<String, dynamic> json,
) => DownloadContentResultMetadata(
  json['thumbnail'] as String?,
  json['zip_file'] as String?,
  json['pagination'] == null
      ? null
      : DownloadContentResultMetadataPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DownloadContentResultMetadataToJson(
  DownloadContentResultMetadata instance,
) => <String, dynamic>{
  'thumbnail': instance.thumbnail,
  'zip_file': instance.zipFile,
  'pagination': instance.pagination?.toJson(),
};

DownloadContentResultMetadataPagination
_$DownloadContentResultMetadataPaginationFromJson(Map<String, dynamic> json) =>
    DownloadContentResultMetadataPagination(
      (json['total'] as num?)?.toInt(),
      (json['count'] as num?)?.toInt(),
      (json['per_page'] as num?)?.toInt(),
      (json['current_page'] as num?)?.toInt(),
      (json['total_pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DownloadContentResultMetadataPaginationToJson(
  DownloadContentResultMetadataPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
