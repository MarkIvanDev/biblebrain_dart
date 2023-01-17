import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';
import 'core.dart';

part 'search.g.dart';

/// Payload containing the data of a search.
@JsonSerializable()
class SearchResult {
  @JsonKey(name: 'audio_filesets')
  final List<SearchAudioFileset>? audioFilesets;
  final VersesResult? verses;

  const SearchResult(this.audioFilesets, this.verses);

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}

/// An audio fileset of a [SearchResult].
@JsonSerializable()
class SearchAudioFileset {
  final String? id;
  @JsonKey(name: 'asset_id')
  final String? assetId;
  @JsonKey(name: 'set_type_code')
  @MediaTypeConverter()
  final MediaType? setTypeCode;
  @JsonKey(name: 'set_size_code')
  final String? setSizeCode;
  @JsonKey(name: 'laravel_through_key')
  final String? laravelThroughKey;
  final List<SearchAudioFilesetMetadata>? meta;

  const SearchAudioFileset(this.id, this.assetId, this.setTypeCode,
      this.setSizeCode, this.laravelThroughKey, this.meta);

  factory SearchAudioFileset.fromJson(Map<String, dynamic> json) =>
      _$SearchAudioFilesetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$SearchAudioFilesetToJson(this);
}

/// The metadata of a [SearchAudioFileset].
@JsonSerializable()
class SearchAudioFilesetMetadata {
  final String? hashId;
  final String? name;
  final String? description;
  final String? iso;
  @JsonKey(name: 'language_id')
  final int? languageId;

  const SearchAudioFilesetMetadata(
      this.hashId, this.name, this.description, this.iso, this.languageId);

  factory SearchAudioFilesetMetadata.fromJson(Map<String, dynamic> json) =>
      _$SearchAudioFilesetMetadataFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$SearchAudioFilesetMetadataToJson(this);
}
