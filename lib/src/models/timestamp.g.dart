// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilesetId _$FilesetIdFromJson(Map<String, dynamic> json) =>
    FilesetId(json['fileset_id'] as String?);

Map<String, dynamic> _$FilesetIdToJson(FilesetId instance) => <String, dynamic>{
  'fileset_id': instance.id,
};

Timestamp _$TimestampFromJson(Map<String, dynamic> json) => Timestamp(
  json['book'] as String?,
  json['chapter'] as String?,
  json['verse_start'] as String?,
  (json['timestamp'] as num?)?.toDouble(),
);

Map<String, dynamic> _$TimestampToJson(Timestamp instance) => <String, dynamic>{
  'book': instance.book,
  'chapter': instance.chapter,
  'verse_start': instance.verseStart,
  'timestamp': instance.timestamp,
};

TimestampsResult _$TimestampsResultFromJson(Map<String, dynamic> json) =>
    TimestampsResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Timestamp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TimestampsResultToJson(TimestampsResult instance) =>
    <String, dynamic>{'data': instance.data?.map((e) => e.toJson()).toList()};
