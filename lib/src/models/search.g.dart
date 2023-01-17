// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      (json['audio_filesets'] as List<dynamic>?)
          ?.map((e) => SearchAudioFileset.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['verses'] == null
          ? null
          : VersesResult.fromJson(json['verses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'audio_filesets': instance.audioFilesets?.map((e) => e.toJson()).toList(),
      'verses': instance.verses?.toJson(),
    };

SearchAudioFileset _$SearchAudioFilesetFromJson(Map<String, dynamic> json) =>
    SearchAudioFileset(
      json['id'] as String?,
      json['asset_id'] as String?,
      const MediaTypeConverter().fromJson(json['set_type_code'] as String?),
      json['set_size_code'] as String?,
      json['laravel_through_key'] as String?,
      (json['meta'] as List<dynamic>?)
          ?.map((e) =>
              SearchAudioFilesetMetadata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchAudioFilesetToJson(SearchAudioFileset instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asset_id': instance.assetId,
      'set_type_code': const MediaTypeConverter().toJson(instance.setTypeCode),
      'set_size_code': instance.setSizeCode,
      'laravel_through_key': instance.laravelThroughKey,
      'meta': instance.meta?.map((e) => e.toJson()).toList(),
    };

SearchAudioFilesetMetadata _$SearchAudioFilesetMetadataFromJson(
        Map<String, dynamic> json) =>
    SearchAudioFilesetMetadata(
      json['hashId'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['iso'] as String?,
      json['language_id'] as int?,
    );

Map<String, dynamic> _$SearchAudioFilesetMetadataToJson(
        SearchAudioFilesetMetadata instance) =>
    <String, dynamic>{
      'hashId': instance.hashId,
      'name': instance.name,
      'description': instance.description,
      'iso': instance.iso,
      'language_id': instance.languageId,
    };
