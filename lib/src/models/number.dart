import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';

part 'number.g.dart';

/// A number.
@JsonSerializable()
class Number {
  final String? id;
  final String? description;
  final String? notes;
  @StringMapOrEmptyArrayConverter()
  final Map<String, String>? alphabets;

  const Number(this.id, this.description, this.notes, this.alphabets);

  factory Number.fromJson(Map<String, dynamic> json) => _$NumberFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$NumberToJson(this);
}

/// Payload containing the data of a list of numbers.
@JsonSerializable()
class NumbersResult {
  final List<Number>? data;

  const NumbersResult(this.data);

  factory NumbersResult.fromJson(Map<String, dynamic> json) =>
      _$NumbersResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$NumbersResultToJson(this);
}

/// Information of a number.
@JsonSerializable()
class NumberInfo {
  final String? id;
  final String? description;
  final String? notes;
  @StringMapOrEmptyArrayConverter()
  final Map<String, String>? alphabets;
  final List<NumberInfoNumeral>? numerals;

  const NumberInfo(
      this.id, this.description, this.notes, this.alphabets, this.numerals);

  factory NumberInfo.fromJson(Map<String, dynamic> json) =>
      _$NumberInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$NumberInfoToJson(this);
}

/// A numeral of a [NumberInfo].
@JsonSerializable()
class NumberInfoNumeral {
  final int? value;
  final String? glyph;
  @JsonKey(name: 'numeral_written')
  final String? numeralWritten;

  const NumberInfoNumeral(this.value, this.glyph, this.numeralWritten);

  factory NumberInfoNumeral.fromJson(Map<String, dynamic> json) =>
      _$NumberInfoNumeralFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$NumberInfoNumeralToJson(this);
}

/// Payload containing the data of a number.
@JsonSerializable()
class NumberInfoResult {
  final NumberInfo? data;

  const NumberInfoResult(this.data);

  factory NumberInfoResult.fromJson(Map<String, dynamic> json) =>
      _$NumberInfoResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$NumberInfoResultToJson(this);
}
