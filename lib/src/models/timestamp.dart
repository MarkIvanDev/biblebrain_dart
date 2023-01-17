import 'package:json_annotation/json_annotation.dart';

part 'timestamp.g.dart';

/// A fileset id.
@JsonSerializable()
class FilesetId {
  @JsonKey(name: 'fileset_id')
  final String? id;

  const FilesetId(this.id);

  factory FilesetId.fromJson(Map<String, dynamic> json) =>
      _$FilesetIdFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$FilesetIdToJson(this);
}

/// A timestamp.
@JsonSerializable()
class Timestamp {
  final String? book;
  final String? chapter;
  @JsonKey(name: 'verse_start')
  final String? verseStart;
  final double? timestamp;

  const Timestamp(this.book, this.chapter, this.verseStart, this.timestamp);

  factory Timestamp.fromJson(Map<String, dynamic> json) =>
      _$TimestampFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$TimestampToJson(this);
}

/// Payload containing the data of a list of timestamps.
@JsonSerializable()
class TimestampsResult {
  final List<Timestamp>? data;

  const TimestampsResult(this.data);

  factory TimestampsResult.fromJson(Map<String, dynamic> json) =>
      _$TimestampsResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$TimestampsResultToJson(this);
}
