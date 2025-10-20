// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Number _$NumberFromJson(Map<String, dynamic> json) => Number(
  json['id'] as String?,
  json['description'] as String?,
  json['notes'] as String?,
  const StringMapOrEmptyArrayConverter().fromJson(json['alphabets']),
);

Map<String, dynamic> _$NumberToJson(Number instance) => <String, dynamic>{
  'id': instance.id,
  'description': instance.description,
  'notes': instance.notes,
  'alphabets': _$JsonConverterToJson<dynamic, Map<String, String>>(
    instance.alphabets,
    const StringMapOrEmptyArrayConverter().toJson,
  ),
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

NumbersResult _$NumbersResultFromJson(Map<String, dynamic> json) =>
    NumbersResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Number.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NumbersResultToJson(NumbersResult instance) =>
    <String, dynamic>{'data': instance.data?.map((e) => e.toJson()).toList()};

NumberInfo _$NumberInfoFromJson(Map<String, dynamic> json) => NumberInfo(
  json['id'] as String?,
  json['description'] as String?,
  json['notes'] as String?,
  const StringMapOrEmptyArrayConverter().fromJson(json['alphabets']),
  (json['numerals'] as List<dynamic>?)
      ?.map((e) => NumberInfoNumeral.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$NumberInfoToJson(NumberInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'notes': instance.notes,
      'alphabets': _$JsonConverterToJson<dynamic, Map<String, String>>(
        instance.alphabets,
        const StringMapOrEmptyArrayConverter().toJson,
      ),
      'numerals': instance.numerals?.map((e) => e.toJson()).toList(),
    };

NumberInfoNumeral _$NumberInfoNumeralFromJson(Map<String, dynamic> json) =>
    NumberInfoNumeral(
      (json['value'] as num?)?.toInt(),
      json['glyph'] as String?,
      json['numeral_written'] as String?,
    );

Map<String, dynamic> _$NumberInfoNumeralToJson(NumberInfoNumeral instance) =>
    <String, dynamic>{
      'value': instance.value,
      'glyph': instance.glyph,
      'numeral_written': instance.numeralWritten,
    };

NumberInfoResult _$NumberInfoResultFromJson(Map<String, dynamic> json) =>
    NumberInfoResult(
      json['data'] == null
          ? null
          : NumberInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NumberInfoResultToJson(NumberInfoResult instance) =>
    <String, dynamic>{'data': instance.data?.toJson()};
